import 'package:audioplayers/audioplayers.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';

class LightSongPlayScreen extends StatefulWidget {
  @override
  State<LightSongPlayScreen> createState() => _LightSongPlayScreenState();
}

class _LightSongPlayScreenState extends State<LightSongPlayScreen> {
  final audioPlayer = AudioPlayer();
  bool isPalying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setAudio();
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPalying = state == PlayerState.PLAYING;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioPlayer.onAudioPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    audioPlayer.dispose();
    super.dispose();
  }

  Future setAudio() async {
    final player = AudioCache(prefix: 'assets/');
    final url = await player.load('Starboy.mp3');

    audioPlayer.setUrl(url.path, isLocal: true);
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool isRtl = context.locale == Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: size.width,
              margin: getMargin(
                left: 24,
                top: 24,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 3,
                      bottom: 2,
                    ),
                    child: CommonImageViewWithDarkOption(
                      isDark: isDark,
                      isRtl: isRtl,
                      isBackBtn: true,
                      svgPath: ImageConstant.imgArrowleft,
                      height: getVerticalSize(
                        15.00,
                      ),
                      width: getHorizontalSize(
                        19.00,
                      ),
                    ),
                  ),
                  CommonImageViewWithDarkOption(
                    isDark: isDark,
                    svgPath: ImageConstant.imgMenu21X21,
                    height: getSize(
                      21.00,
                    ),
                    width: getSize(
                      21.00,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 24,
                        right: 24,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            40.00,
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgImage80X80,
                          height: getSize(
                            380.00,
                          ),
                          width: getSize(
                            380.00,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 20,
                        right: 24,
                      ),
                      child: Text(
                        "Starboy",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: getFontSize(
                            32,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 12,
                        right: 24,
                      ),
                      child: Text(
                        "The Weeknd, Daft Punk",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.20,
                        ),
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        1.00,
                      ),
                      width: getHorizontalSize(
                        380.00,
                      ),
                      margin: getMargin(
                        left: 24,
                        top: 20,
                        right: 24,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray200,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 19,
                        right: 24,
                      ),
                      child: SliderTheme(
                        data: SliderThemeData(
                          trackShape: RoundedRectSliderTrackShape(),
                          inactiveTrackColor: ColorConstant.gray300,
                          thumbShape: RoundSliderThumbShape(),
                        ),
                        child: Slider(
                          activeColor: ColorConstant.greenA700,
                          value: position.inSeconds.toDouble(),
                          min: 0.0,
                          max: duration.inSeconds.toDouble(),
                          onChanged: (value) async {
                            final position = Duration(seconds: value.toInt());
                            await audioPlayer.seek(position);
                            await audioPlayer.resume();
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 4,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            formatTime(duration),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.20,
                            ),
                          ),
                          Text(
                            formatTime(position),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 40,
                        top: 22,
                        right: 40,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 24,
                              bottom: 23,
                            ),
                            child: CommonImageViewWithDarkOption(
                              isDark: isDark,
                              svgPath: ImageConstant.imgGroup18X22,
                              height: getVerticalSize(
                                18.00,
                              ),
                              width: getHorizontalSize(
                                22.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 0,
                              top: 20,
                              bottom: 18,
                            ),
                            child: CommonImageViewWithDarkOption(
                              isDark: isDark,
                              svgPath: ImageConstant.imgGroup27X24,
                              height: getVerticalSize(
                                27.00,
                              ),
                              width: getHorizontalSize(
                                24.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 0,
                            ),
                            child: InkWell(
                              onTap: () async {
                                if (isPalying) {
                                  await audioPlayer.pause();
                                } else {
                                  await audioPlayer.resume();
                                }
                              },
                              child: Container(
                                padding: getPadding(all: 20),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      ImageConstant.btnBg,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: isPalying
                                    ? Icon(
                                        Icons.pause,
                                        color: isDark
                                            ? ColorConstant.darkBg
                                            : Colors.white,
                                      )
                                    : Image.asset(
                                        ImageConstant.play,
                                        width: getHorizontalSize(26),
                                        height: getVerticalSize(22),
                                        color: isDark
                                            ? ColorConstant.darkBg
                                            : Colors.white,
                                      ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 0,
                              top: 20,
                              bottom: 18,
                            ),
                            child: CommonImageViewWithDarkOption(
                              isDark: isDark,
                              svgPath: ImageConstant.imgGroup27X24,
                              height: getVerticalSize(
                                27.00,
                              ),
                              width: getHorizontalSize(
                                24.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 0,
                              top: 24,
                              bottom: 23,
                            ),
                            child: RotatedBox(
                              quarterTurns:2,
                              child: CommonImageViewWithDarkOption(
                                isDark: isDark,
                                svgPath: ImageConstant.imgGroup18X22,
                                height: getVerticalSize(
                                  18.00,
                                ),
                                width: getHorizontalSize(
                                  22.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                          left: isRtl ? 26 : 40,
                          top: 15,
                          right: isRtl ? 40 : 26,
                          bottom: 15),
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                                bottom: 2,
                              ),
                              child: CommonImageViewWithDarkOption(
                                isDark: isDark,
                                svgPath: ImageConstant.imgDashboard,
                                height: getVerticalSize(
                                  20.00,
                                ),
                                width: getHorizontalSize(
                                  23.00,
                                ),
                              ),
                            ),
                            CommonImageViewWithDarkOption(
                              isDark: isDark,
                              svgPath: ImageConstant.imgClock24X21,
                              height: getVerticalSize(
                                24.00,
                              ),
                              width: getHorizontalSize(
                                21.00,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 2,
                                bottom: 3,
                              ),
                              child: CommonImageViewWithDarkOption(
                                isDark: isDark,
                                svgPath: ImageConstant.imgMusic18X23,
                                height: getVerticalSize(
                                  18.00,
                                ),
                                width: getHorizontalSize(
                                  23.00,
                                ),
                              ),
                            ),
                            Container(
                              height: getVerticalSize(24),
                              width: getHorizontalSize(40),
                              padding: EdgeInsets.zero,
                              child: Theme(
                                data: Theme.of(context).copyWith(
                                  dividerColor: isDark
                                      ? ColorConstant.darkButton
                                      : ColorConstant.gray200,
                                  iconTheme: IconThemeData(
                                      color: isDark
                                          ? ColorConstant.whiteA700
                                          : Colors.black),
                                  textTheme: TextTheme().apply(
                                      bodyColor: isDark
                                          ? ColorConstant.whiteA700
                                          : Colors.black),
                                ),
                                child: PopupMenuButton<int>(
                                  padding: EdgeInsets.only(
                                      right: getHorizontalSize(2)),
                                  iconSize: getHorizontalSize(22),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(getHorizontalSize(20)),
                                    ),
                                  ),
                                  color: isDark
                                      ? ColorConstant.darkBg
                                      : ColorConstant.whiteA700,
                                  onSelected: (item) =>
                                      onSelected(context, item),
                                  itemBuilder: (context) => [
                                    PopupMenuItem<int>(
                                      value: 0,
                                      child: Container(
                                        child: Padding(
                                          padding: getPadding(
                                            left: 10,
                                            top: 15,
                                            right: 10,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 1,
                                                  bottom: 1,
                                                ),
                                                child:
                                                    CommonImageViewWithDarkOption(
                                                  isDark: isDark,
                                                  svgPath: ImageConstant
                                                      .imgUser22X15,
                                                  height: getVerticalSize(
                                                    16.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    11.00,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 16,
                                                ),
                                                child: Text(
                                                  "View Artist",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color: isDark
                                                        ? Colors.white
                                                        : Colors.black,
                                                    fontSize: getFontSize(
                                                      14,
                                                    ),
                                                    fontFamily: 'Urbanist',
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    PopupMenuDivider(),
                                    PopupMenuItem<int>(
                                        value: 1,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 10,
                                            top: 20,
                                            right: 10,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 2,
                                                  bottom: 2,
                                                ),
                                                child:
                                                    CommonImageViewWithDarkOption(
                                                  isDark: isDark,
                                                  svgPath: ImageConstant
                                                      .imgClose15X15,
                                                  height: getSize(
                                                    15.00,
                                                  ),
                                                  width: getSize(
                                                    15.00,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 14,
                                                ),
                                                child: Text(
                                                  "Don’t Play This",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color: isDark
                                                        ? Colors.white
                                                        : Colors.black,
                                                    fontSize: getFontSize(
                                                      14,
                                                    ),
                                                    fontFamily: 'Urbanist',
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )),
                                    PopupMenuDivider(),
                                    PopupMenuItem(
                                      value: 2,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 10,
                                          top: 15,
                                          right: 10,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 2,
                                                bottom: 2,
                                              ),
                                              child:
                                                  CommonImageViewWithDarkOption(
                                                isDark: isDark,
                                                svgPath: ImageConstant.imgPlay,
                                                height: getSize(
                                                  15.00,
                                                ),
                                                width: getSize(
                                                  15.00,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 14,
                                              ),
                                              child: Text(
                                                "Go to Album",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: isDark
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: getFontSize(
                                                    14,
                                                  ),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    PopupMenuDivider(),
                                    PopupMenuItem(
                                      value: 3,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 10,
                                          top: 15,
                                          right: 21,
                                          bottom: 10,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                                bottom: 1,
                                              ),
                                              child:
                                                  CommonImageViewWithDarkOption(
                                                isDark: isDark,
                                                svgPath:
                                                    ImageConstant.imgShare16X16,
                                                height: getSize(
                                                  16.00,
                                                ),
                                                width: getSize(
                                                  16.00,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 13,
                                              ),
                                              child: Text(
                                                "Share",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: isDark
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: getFontSize(
                                                    14,
                                                  ),
                                                  fontFamily: 'Urbanist',
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 0.20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 33,
                        right: 24,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgArrowup,
                        height: getVerticalSize(
                          7.00,
                        ),
                        width: getHorizontalSize(
                          14.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 14,
                        right: 24,
                        bottom: 11,
                      ),
                      child: Text(
                        "Lyrics",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }
}

onSelected(BuildContext context, int item) {}
