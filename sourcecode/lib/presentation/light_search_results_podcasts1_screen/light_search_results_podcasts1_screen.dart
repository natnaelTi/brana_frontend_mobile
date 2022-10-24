import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hearme/core/app_export.dart';
import 'package:hearme/presentation/light_search_results_albums_screen/light_search_results_albums_screen.dart';
import 'package:hearme/presentation/light_search_results_artists_screen/light_search_results_artists_screen.dart';
import 'package:hearme/presentation/light_search_results_playlists_page/light_search_results_playlists_page.dart';
import 'package:hearme/presentation/light_search_results_podcasts_page/light_search_results_podcasts_page.dart';
import 'package:hearme/presentation/light_search_results_profiles_page/light_search_results_profiles_page.dart';
import 'package:hearme/presentation/light_search_results_songs_screen/light_search_results_songs_screen.dart';
import 'package:hearme/presentation/light_search_results_top_screen/light_search_results_top_screen.dart';
import 'package:hearme/widgets/custom_search_view.dart';

class LightSearchResultsPodcasts1Screen extends StatefulWidget {
  @override
  State<LightSearchResultsPodcasts1Screen> createState() => _LightSearchResultsPodcasts1ScreenState();
}

class _LightSearchResultsPodcasts1ScreenState extends State<LightSearchResultsPodcasts1Screen> with SingleTickerProviderStateMixin {
  TextEditingController stateFilledSeController = TextEditingController();

   TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = tabController = TabController(length: 7, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController!.dispose();
  }


  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getVerticalSize(24),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      right: 24
                    ),
                    child: Row(
                      children: [
                        CommonImageViewWithDarkOption(
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
                      SizedBox(width: getHorizontalSize(24),),
                    
                        Expanded(
                          child: CustomSearchView(
                            isDark: isDark,
                            width: 380,
                            focusNode: FocusNode(),
                            controller: stateFilledSeController,
                            hintText: "Jordan Harbinger",
                            margin: getMargin(
                              left: 0,
                              right: 0,
                            ),
                            alignment: Alignment.center,
                            prefix: Container(
                              margin: getMargin(
                                left: 22,
                                top: 20,
                                right: 14,
                                bottom: 19,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgSearchGray400,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              minWidth: getSize(
                                16.02,
                              ),
                              minHeight: getSize(
                                16.02,
                              ),
                            ),
                            suffix: Padding(
                              padding: EdgeInsets.only(
                                right: getHorizontalSize(
                                  15.00,
                                ),
                              ),
                              child: IconButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              minWidth: getHorizontalSize(
                                10.83,
                              ),
                              minHeight: getVerticalSize(
                                10.83,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  
                  Container(
                    height: getVerticalSize(40),
                    margin: getMargin(
                      left: 0,
                      top: 24,
                      right: 0,
                    ),
                    child: TabBar(
                      padding: getPadding(
                        left: 20,
                        right: 20
                      ),
                      isScrollable: true,
                      labelPadding: EdgeInsets.symmetric(horizontal: getHorizontalSize(20),
                      vertical: getVerticalSize(8)
                      ),
                      controller: tabController,
                      //TODO: Please add tab controller
                      tabs: [
                        Tab(
                          text: "Top",
                        ),
                        Tab(
                          text: "Songs",
                        ),
                        Tab(
                          text: "Atrists",
                        ),
                        Tab(
                          text: "Albums",
                        ),
                        Tab(
                          text: "Podcasts",
                        ),
                        Tab(
                          text: "Playlists",
                        ),
                        Tab(
                          text: "Profiles",
                        ),
                      ],
                      labelColor: ColorConstant.whiteA700,

                      unselectedLabelColor: ColorConstant.greenA700,
                      indicator: BoxDecoration(
                        color: ColorConstant.greenA700,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            19.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 0,
                      top: 24,
                    ),
                    height:size.height-170,
                    child: TabBarView(
                      
                      controller: tabController,
                      //TODO: Please add tab controller
                      children: [
                        LightSearchResultsTopScreen(),
                        LightSearchResultsSongsScreen(),
                        LightSearchResultsArtistsScreen(),
                        LightSearchResultsAlbumsScreen(),
                        LightSearchResultsPodcastsPage(),
                        LightSearchResultsPlaylistsPage(),
                        LightSearchResultsProfilesPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
