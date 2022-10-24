import '../light_search_results_albums_screen/widgets/gridloremipsumdol_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LightSearchResultsAlbumsScreen extends StatelessWidget {
  TextEditingController stateFilledSeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: getPadding(left: 20, right: 20),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: getVerticalSize(
          269.00,
        ),
        crossAxisCount: 2,
        mainAxisSpacing: getHorizontalSize(
          12.00,
        ),
        crossAxisSpacing: getHorizontalSize(
          12.00,
        ),
      ),
      physics: BouncingScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) {
        return GridloremipsumdolItemWidget();
      },
    );
  }
}
