import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_places/features/places/presentation/bloc/places_bloc.dart';

class AddressSearch extends SearchDelegate<String?> {
  final PlacesBloc bloc;
  final String sessionToken;

  AddressSearch(this.bloc, {required this.sessionToken});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        tooltip: 'Clear',
        icon: const Icon(Icons.clear),
        onPressed: () => query = '',
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) =>
      BlocBuilder<PlacesBloc, PlacesState>(
        bloc: bloc,
        builder: (context, state) => state.maybeWhen(
          loading: () => const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Loading...'),
          ),
          failure: (message) => Text(message),
          placesLoaded: (places) => ListView.builder(
            itemCount: places.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(places[index].description),
              onTap: () => close(context, places[index].placeId),
            ),
          ),
          orElse: () => const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Enter your address'),
          ),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isNotEmpty) {
      bloc.add(PlacesAutoCompleteEvent(query, sessionToken: sessionToken));
    }

    return BlocBuilder<PlacesBloc, PlacesState>(
      bloc: bloc,
      builder: (context, state) => state.maybeWhen(
        loading: () => const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Loading...'),
        ),
        failure: (message) => Text(message),
        placesLoaded: (places) => ListView.builder(
          itemCount: places.length,
          itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue[50],
              child: const Icon(Icons.fmd_good, size: 17),
            ),
            title: Text(places[index].description),
            onTap: () => close(context, places[index].placeId),
          ),
        ),
        orElse: () => const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Enter your address'),
        ),
      ),
    );
  }
}
