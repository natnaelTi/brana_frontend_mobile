import '../light_search_results_songs_screen/widgets/listsongtitle8_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LightSearchResultsSongsScreen extends StatelessWidget {
  TextEditingController stateFilledSeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: getPadding(top: 0, right: 24, left: 24, bottom: 30),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 8,
          itemBuilder: (context, index) {
            return Listsongtitle8ItemWidget();
          },
        ),
      ),
    );
  }
}
