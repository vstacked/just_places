import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:just_places/core/utils/env.dart';
import 'package:just_places/features/places/presentation/bloc/places_bloc.dart';
import 'package:just_places/features/places/presentation/utils/enums.dart';

class AddressMaps extends StatefulWidget {
  const AddressMaps({Key? key}) : super(key: key);

  @override
  State<AddressMaps> createState() => AddressMapsState();
}

class AddressMapsState extends State<AddressMaps> {
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  GlobalKey destinationIconKey = GlobalKey();
  GlobalKey originIconKey = GlobalKey();

  GoogleMapController? mapController;
  PolylinePoints polylinePoints = PolylinePoints();

  String googleAPiKey = Env.keyGoogleMapsApi ?? '';

  LatLng? origin, destination;
  ModeType? mode;

  Set<Marker> markers = {};
  Map<PolylineId, Polyline> polylines = {};

  StreamSubscription<Position>? positionStream;

  @override
  Widget build(BuildContext context) {
    return BlocListener<PlacesBloc, PlacesState>(
      listenWhen: (previous, current) =>
          (previous is PlacesEstimate && current is PlacesEstimate)
              ? ((previous.origin != current.origin) ||
                  (previous.destination != current.destination) ||
                  (previous.mode != current.mode) ||
                  current.listen)
              : true,
      listener: (context, state) {
        state.maybeWhen(
          estimate: (origin, destination, mode, listen, _) {
            if (this.origin != null && this.destination != null) {
              if (listen) {
                listenLocation();
              } else {
                positionStream?.cancel();
                setMarkersAndAnimateCameraBounds();
              }
            }
            if (origin.isNotEmpty && destination.isEmpty && markers.isEmpty) {
              setMarkerAndAnimateCamera(origin);
            } else if (origin.isNotEmpty &&
                destination.isNotEmpty &&
                mode != null) {
              this.origin = LatLng(origin[0], origin[1]);
              this.destination = LatLng(destination[0], destination[1]);
              this.mode = mode;
              setMarkersAndAnimateCameraBounds();
            }
          },
          orElse: () {},
        );
      },
      child: Stack(
        children: [
          RepaintBoundary(
            key: originIconKey,
            child: const Icon(Icons.flag_circle, color: Colors.blue),
          ),
          RepaintBoundary(
            key: destinationIconKey,
            child: const Icon(Icons.check_circle, color: Colors.green),
          ),
          GoogleMap(
            zoomGesturesEnabled: true,
            initialCameraPosition: const CameraPosition(target: LatLng(0, 0)),
            markers: markers,
            polylines: Set<Polyline>.of(polylines.values),
            mapType: MapType.normal,
            myLocationButtonEnabled: false,
            myLocationEnabled: true,
            onMapCreated: (controller) =>
                setState(() => mapController = controller),
          ),
        ],
      ),
    );
  }

  Future<BitmapDescriptor> getCustomIcon(GlobalKey iconKey) async {
    Future<Uint8List> _capturePng(GlobalKey iconKey) async {
      try {
        RenderRepaintBoundary boundary =
            iconKey.currentContext!.findRenderObject() as RenderRepaintBoundary;

        ui.Image image = await boundary.toImage(pixelRatio: 3.0);
        ByteData? byteData =
            await image.toByteData(format: ui.ImageByteFormat.png);

        final pngBytes = byteData!.buffer.asUint8List();
        return pngBytes;
      } catch (e) {
        _analytics
            .logEvent(name: 'custom marker icon', parameters: {'error': e});
        throw Exception(e);
      }
    }

    Uint8List imageData = await _capturePng(iconKey);
    return BitmapDescriptor.fromBytes(imageData);
  }

  void setMarkerAndAnimateCamera(List<double> origin) async {
    BitmapDescriptor originIcon = await getCustomIcon(originIconKey);

    setState(() {
      markers.clear();
      markers.add(
        Marker(
          markerId: const MarkerId('origin'),
          position: LatLng(origin[0], origin[1]),
          icon: originIcon,
        ),
      );

      mapController!.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(origin[0], origin[1]),
            zoom: 18.0,
          ),
        ),
      );
    });
  }

  void setMarkersAndAnimateCameraBounds() {
    setState(() {
      setRoute(origin!, destination!, mode!);

      final startLatitude = origin!.latitude;
      final destinationLatitude = destination!.latitude;

      final startLongitude = origin!.longitude;
      final destinationLongitude = destination!.longitude;

      double miny = (startLatitude <= destinationLatitude)
          ? startLatitude
          : destinationLatitude;
      double minx = (startLongitude <= destinationLongitude)
          ? startLongitude
          : destinationLongitude;
      double maxy = (startLatitude <= destinationLatitude)
          ? destinationLatitude
          : startLatitude;
      double maxx = (startLongitude <= destinationLongitude)
          ? destinationLongitude
          : startLongitude;

      double southWestLatitude = miny;
      double southWestLongitude = minx;

      double northEastLatitude = maxy;
      double northEastLongitude = maxx;

      mapController!.animateCamera(
        CameraUpdate.newLatLngBounds(
          LatLngBounds(
            northeast: LatLng(northEastLatitude, northEastLongitude),
            southwest: LatLng(southWestLatitude, southWestLongitude),
          ),
          100.0,
        ),
      );
    });
  }

  void listenLocation() {
    late LocationSettings locationSettings;

    if (defaultTargetPlatform == TargetPlatform.android) {
      locationSettings = AndroidSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 100,
        forceLocationManager: true,
        intervalDuration: const Duration(seconds: 10),
        //(Optional) Set foreground notification config to keep the app alive
        //when going to the background
        foregroundNotificationConfig: const ForegroundNotificationConfig(
          notificationText:
              "just places will continue to receive your location even when you aren't using it",
          notificationTitle: "Running in Background",
          enableWakeLock: true,
        ),
      );
    } else if (defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.macOS) {
      locationSettings = AppleSettings(
        accuracy: LocationAccuracy.high,
        activityType: ActivityType.fitness,
        distanceFilter: 100,
        pauseLocationUpdatesAutomatically: true,
        // Only set to true if our app will be started up in the background.
        showBackgroundLocationIndicator: false,
      );
    } else {
      locationSettings = const LocationSettings(
          accuracy: LocationAccuracy.high, distanceFilter: 100);
    }

    positionStream = Geolocator.getPositionStream(
            locationSettings: locationSettings)
        .listen((Position? position) {
      if (position != null) {
        mapController!.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(position.latitude, position.longitude),
              zoom: 17.5,
            ),
          ),
        );

        getDirections(
          LatLng(position.latitude, position.longitude),
          destination!,
          mode!,
        );
      }
    })
      ..onError(
        (e) =>
            _analytics.logEvent(name: 'geolocator', parameters: {'error': e}),
      );
  }

  void setRoute(LatLng origin, LatLng destination, ModeType mode) async {
    markers.clear();
    BitmapDescriptor originIcon = await getCustomIcon(originIconKey);
    BitmapDescriptor destinationIcon = await getCustomIcon(destinationIconKey);

    markers.add(
      Marker(
        markerId: const MarkerId('origin'),
        position: LatLng(origin.latitude, origin.longitude),
        icon: originIcon,
      ),
    );

    markers.add(
      Marker(
        markerId: const MarkerId('destination'),
        position: destination,
        icon: destinationIcon,
      ),
    );

    getDirections(origin, destination, mode);
  }

  void getDirections(LatLng origin, LatLng destination, ModeType mode) async {
    List<LatLng> polylineCoordinates = [];

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      googleAPiKey,
      PointLatLng(origin.latitude, origin.longitude),
      PointLatLng(destination.latitude, destination.longitude),
      travelMode: () {
        switch (mode) {
          case ModeType.driving:
            return TravelMode.driving;
          case ModeType.bicycling:
            return TravelMode.bicycling;
          case ModeType.walking:
            return TravelMode.walking;
          case ModeType.transit:
            return TravelMode.transit;
          default:
            return TravelMode.driving;
        }
      }(),
    );

    if (result.points.isNotEmpty) {
      for (var point in result.points) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      }
    } else {
      _analytics.logEvent(
        name: 'polylinePoints',
        parameters: {'error': result.errorMessage},
      );
    }

    addPolyLine(polylineCoordinates);
  }

  void addPolyLine(List<LatLng> polylineCoordinates) {
    PolylineId id = const PolylineId("poly");

    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.blue,
      startCap: Cap.roundCap,
      endCap: Cap.roundCap,
      points: polylineCoordinates,
      width: 8,
    );

    polylines[id] = polyline;
    setState(() {});
  }
}
