import '../light_search_results_artists_screen/widgets/listartistname1_item_widget.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LightSearchResultsArtistsScreen extends StatelessWidget {
  TextEditingController stateFilledSeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 8,
      itemBuilder: (context, index) {
        return Listartistname1ItemWidget();
      },
    );
  }
}
