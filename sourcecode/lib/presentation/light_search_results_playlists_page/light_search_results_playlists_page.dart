import '../light_search_results_playlists_page/widgets/gridlanguage_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LightSearchResultsPlaylistsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: getPadding(
        left: 20,
        right: 20

      ),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: getVerticalSize(
          247.00,
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
        return GridlanguageItemWidget();
      },
    );
  }
}
