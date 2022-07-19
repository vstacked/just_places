import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:just_places/features/places/domain/entities/estimate_entity.dart';
import 'package:just_places/features/places/domain/usecases/usecases.dart';
import 'package:just_places/features/places/presentation/bloc/places_bloc.dart';
import 'package:just_places/features/places/presentation/utils/enums.dart';

const List<IconData> _icons = [
  Icons.drive_eta_rounded,
  Icons.pedal_bike,
  Icons.directions_walk,
  Icons.train,
];

class BottomAction extends StatefulWidget {
  const BottomAction({Key? key, required this.onButtonPressed})
      : super(key: key);
  final ValueChanged<bool> onButtonPressed;

  @override
  State<BottomAction> createState() => _BottomActionState();
}

class _BottomActionState extends State<BottomAction> {
  EstimateEntity estimate =
      const EstimateEntity(distance: '', duration: '', fare: '');
  bool start = true;

  @override
  Widget build(BuildContext context) {
    final estimateState = context.select(
      (PlacesBloc bloc) =>
          bloc.state is PlacesEstimate &&
          (bloc.state as PlacesEstimate).origin.isNotEmpty &&
          (bloc.state as PlacesEstimate).destination.isNotEmpty,
    );

    return Container(
      height: 175,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                text:
                    estimate.duration.isNotEmpty ? estimate.duration : '- min',
                children: [
                  TextSpan(
                    text:
                        '  ${estimate.distance.isNotEmpty ? estimate.distance : '- km'}',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (estimate.fare.isNotEmpty)
                    TextSpan(
                      text: '  -  ${estimate.fare}',
                      style: const TextStyle(fontWeight: FontWeight.w400),
                    ),
                ],
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          if (estimateState)
            IgnorePointer(
              ignoring: !start,
              child: _ModeAction(
                onGetEstimate: (estimate, mode) {
                  setState(() => this.estimate = estimate);
                  context
                      .read<PlacesBloc>()
                      .add(PlacesEstimateEvent(mode: mode));
                },
              ),
            )
          else
            const _ModeActionEmpty(),
          ElevatedButton(
            onPressed: estimateState
                ? () {
                    setState(() => start = !start);
                    widget.onButtonPressed(start);
                  }
                : null,
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shadowColor: Colors.transparent,
              fixedSize: const Size(double.maxFinite, 45),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: start ? const Text('Start') : const Text('Stop'),
          ),
        ],
      ),
    );
  }
}

class _ModeAction extends StatefulWidget {
  const _ModeAction({Key? key, required this.onGetEstimate}) : super(key: key);
  final Function(EstimateEntity, ModeType) onGetEstimate;

  @override
  State<_ModeAction> createState() => _ModeActionState();
}

class _ModeActionState extends State<_ModeAction> {
  int selected = 0;

  bool isSelected(int index) => index == selected;

  @override
  Widget build(BuildContext context) {
    final parentState = context.watch<PlacesBloc>().state;

    return SizedBox(
      height: 35,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, int index) {
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
                    parentState.maybeWhen(
                      estimate: (origin, destination, _, __, ___) {
                        privateContext.read<PlacesBloc>().add(
                              PlacesEstimateEvent(
                                origin: origin.isNotEmpty
                                    ? LatLng(origin[0], origin[1])
                                    : null,
                                destination: destination.isNotEmpty
                                    ? LatLng(destination[0], destination[1])
                                    : null,
                                mode: ModeType.values[index],
                              ),
                            );
                      },
                      orElse: () {},
                    );
                  },
                  estimate: (_, __, ___, ____, result) {
                    if (index == 0) {
                      widget.onGetEstimate(result, ModeType.driving);
                    }
                  },
                  orElse: () {},
                );
              },
              builder: (context, state) => state.maybeWhen(
                estimate: (_, __, ___, ____, result) {
                  if (result.duration.isNotEmpty) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: GestureDetector(
                        onTap: () {
                          setState(() => selected = index);
                          widget.onGetEstimate(result, ModeType.values[index]);
                        },
                        child: Chip(
                          label: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: [
                                Icon(
                                  _icons[index],
                                  color: isSelected(index)
                                      ? Colors.white
                                      : Colors.green,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  result.duration,
                                  style: TextStyle(
                                    color: isSelected(index)
                                        ? Colors.white
                                        : Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          backgroundColor: isSelected(index)
                              ? Colors.green
                              : Colors.grey[200],
                        ),
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
                orElse: () => const SizedBox.shrink(),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ModeActionEmpty extends StatelessWidget {
  const _ModeActionEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Chip(
              label: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Icon(_icons[index], color: Colors.green),
                    const SizedBox(width: 10),
                    const Text(
                      '- min',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
              backgroundColor: Colors.grey[200],
            ),
          );
        },
      ),
    );
  }
}
