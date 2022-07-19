import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:just_places/features/places/domain/usecases/usecases.dart';
import 'package:just_places/features/places/presentation/bloc/places_bloc.dart';
import 'package:just_places/features/places/presentation/widgets/address_search.dart';
import 'package:uuid/uuid.dart';

class AddressMenu extends StatelessWidget {
  const AddressMenu({
    Key? key,
    // required this.onMenuTap,
    // required this.onSwitchTap,
  }) : super(key: key);

  // final VoidCallback onMenuTap;
  // final VoidCallback onSwitchTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: 130,
        child: SafeArea(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Icon(Icons.flag_circle, color: Colors.blue),
                    SizedBox(
                      height: 30,
                      child: VerticalDivider(
                        color: Colors.grey.withOpacity(.25),
                        thickness: 2,
                        endIndent: 10,
                        indent: 10,
                      ),
                    ),
                    const Icon(Icons.check_circle, color: Colors.green),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    AddressBox(parentContext: context, isOrigin: true),
                    AddressBox(parentContext: context, isOrigin: false),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: <Widget>[
              //     IconButton(
              //       onPressed: onMenuTap,
              //       icon: const Icon(Icons.more_vert),
              //       color: Colors.grey,
              //       splashRadius: 20,
              //     ),
              //     IconButton(
              //       onPressed: onSwitchTap,
              //       icon: const Icon(Icons.import_export),
              //       color: Colors.grey,
              //       splashRadius: 20,
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddressBox extends StatelessWidget {
  const AddressBox({
    Key? key,
    required this.parentContext,
    required this.isOrigin,
  }) : super(key: key);
  final BuildContext parentContext;
  final bool isOrigin;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlacesBloc(
        context.read<GetAutocomplete>(),
        context.read<GetDetail>(),
        context.read<GetEstimate>(),
      )..add(const PlacesEvent.initial()),
      child: BlocConsumer<PlacesBloc, PlacesState>(
        listener: (privateContext, state) {
          state.maybeWhen(
            initial: () {
              if (isOrigin) {
                _getCurrentLocation().then((value) {
                  privateContext.read<PlacesBloc>().add(
                        PlaceDetailEvent(
                          latLng: '${value.latitude},${value.longitude}',
                        ),
                      );
                });
              }
            },
            detailLoaded: (detail) => parentContext.read<PlacesBloc>().add(
                  PlacesEstimateEvent(
                    origin: isOrigin
                        ? LatLng(detail.location.lat, detail.location.lng)
                        : null,
                    destination: !isOrigin
                        ? LatLng(detail.location.lat, detail.location.lng)
                        : null,
                  ),
                ),
            orElse: () {},
          );
        },
        builder: (context, state) => GestureDetector(
          onTap: () {
            final sessionToken = const Uuid().v4();

            showSearch<String?>(
              context: context,
              delegate: AddressSearch(
                context.read<PlacesBloc>(),
                sessionToken: sessionToken,
              ),
            ).then((value) {
              if (value != null) {
                context
                    .read<PlacesBloc>()
                    .add(PlaceDetailEvent(placeId: value));
              }
            });
          },
          child: Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(.5)),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                state.maybeWhen(
                  detailLoaded: (detail) => detail.formattedAddress,
                  orElse: () =>
                      isOrigin ? 'Your Location' : 'Destination Address',
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<Position> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }
}
