import '../light_notification_podcasts_screen/widgets/listpodcasttitle5_item_widget.dart';
import '../light_notification_podcasts_screen/widgets/listpodcasttitle6_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

class LightNotificationPodcastsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              top: 24,
              right: 10,
            ),
            child: Text(
              "New Podcasts Release Today",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: getFontSize(
                  18,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 24,
            ),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Listpodcasttitle5ItemWidget();
              },
            ),
          ),
          Padding(
            padding: getPadding(
              top: 24,
              right: 10,
            ),
            child: Text(
              "Yesterday",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: getFontSize(
                  18,
                ),
                fontFamily: 'Urbanist',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 24,
            ),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Listpodcasttitle6ItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
