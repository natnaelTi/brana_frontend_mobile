import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_profile_details_screen/light_profile_details_screen.dart';

// ignore: must_be_immutable
class ListprofilenameItemWidget extends StatefulWidget {
  ListprofilenameItemWidget();

  @override
  State<ListprofilenameItemWidget> createState() =>
      _ListprofilenameItemWidgetState();
}

class _ListprofilenameItemWidgetState extends State<ListprofilenameItemWidget> {
  bool following = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LightProfileDetailsScreen(
                    isArtist: true,
                  )),
        );
      },
      child: Padding(
        padding: getPadding(
          top: 12.0,
          bottom: 12.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      40.00,
                    ),
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgEllipse,
                    height: getSize(
                      80.00,
                    ),
                    width: getSize(
                      80.00,
                    ),
                  ),
                ),
                SizedBox(
                  width: getHorizontalSize(20),
                ),
                Container(
                  margin: getMargin(
                    left: 0,
                    top: 16,
                    bottom: 16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Jenny Wilson",
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
                      Padding(
                        padding: getPadding(
                          top: 12,
                          right: 10,
                        ),
                        child: Text(
                          "9,489 Followers",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  following = true;
                });
              },
              child: Container(
                  padding: getPadding(left: 16, right: 16, top: 6, bottom: 6),
                  margin: getMargin(
                    left: 0,
                    top: 24,
                    bottom: 24,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: ColorConstant.greenA700),
                      color: following
                          ? Colors.transparent
                          : ColorConstant.greenA700),
                  child: Text(
                    following ? "Following" : "Follow",
                    style: TextStyle(
                      color: following
                          ? ColorConstant.greenA700
                          : ColorConstant.whiteA700,
                      fontSize: getFontSize(
                        14,
                      ),
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w600,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
