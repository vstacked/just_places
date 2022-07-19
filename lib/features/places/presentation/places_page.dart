import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_places/core/utils/dio_client.dart';
import 'package:just_places/features/places/data/datasources/place_remote_data_source.dart';
import 'package:just_places/features/places/data/repositories/place_repository_impl.dart';
import 'package:just_places/features/places/domain/usecases/usecases.dart';
import 'package:just_places/features/places/presentation/bloc/places_bloc.dart';
import 'package:just_places/features/places/presentation/widgets/widgets.dart';

class PlacesPage extends StatelessWidget {
  const PlacesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DioClient(),
        ),
        RepositoryProvider(
          create: (context) => PlaceRemoteDataSourceImpl(
            context.read<DioClient>().client(),
          ),
        ),
        RepositoryProvider(
          create: (context) => PlaceRepositoryImpl(
            context.read<PlaceRemoteDataSourceImpl>(),
          ),
        ),
        RepositoryProvider(
          create: (context) => GetAutocomplete(
            context.read<PlaceRepositoryImpl>(),
          ),
        ),
        RepositoryProvider(
          create: (context) => GetDetail(
            context.read<PlaceRepositoryImpl>(),
          ),
        ),
        RepositoryProvider(
          create: (context) => GetEstimate(
            context.read<PlaceRepositoryImpl>(),
          ),
        ),
      ],
      child: Builder(
        builder: (context) => BlocProvider(
          create: (context) => PlacesBloc(
            context.read<GetAutocomplete>(),
            context.read<GetDetail>(),
            context.read<GetEstimate>(),
          ),
          child: const _Body(),
        ),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  bool start = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlacesBloc, PlacesState>(
      builder: (context, state) => Scaffold(
        body: Column(
          children: [
            IgnorePointer(ignoring: !start, child: const AddressMenu()),
            const Expanded(child: AddressMaps()),
            BottomAction(
              onButtonPressed: (start) {
                setState(() => this.start = start);
                context
                    .read<PlacesBloc>()
                    .add(PlacesEvent.estimate(listen: !start));
              },
            ),
          ],
        ),
      ),
    );
  }
}
