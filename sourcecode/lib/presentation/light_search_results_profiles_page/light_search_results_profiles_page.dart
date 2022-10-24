import '../light_search_results_profiles_page/widgets/listprofilename_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LightSearchResultsProfilesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: getPadding(
        left: 20,
        right: 20
      ),
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 7,
      itemBuilder: (context, index) {
        return ListprofilenameItemWidget();
      },
    );
  }
}
