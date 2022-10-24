import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hearme/core/utils/math_utils.dart';
import 'package:hearme/presentation/light_explore_screen/light_explore_screen.dart';
import 'package:hearme/presentation/light_my_library_screen/light_my_library_screen.dart';
import 'package:hearme/presentation/light_profile_settings_screen/light_profile_settings_screen.dart';
import '../core/utils/color_constant.dart';
import '../core/utils/image_constant.dart';
import 'light_home_screen/light_home_screen.dart';

class Home extends StatefulWidget {
  static String id = "HomeScreen";
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> screens = [
    LightHomeScreen(),
    LightExploreScreen(),
    LightMyLibraryScreen(),
    LightProfileSettingsScreen(),
  
  ];

  int selectedNavBarIndex = 0;

  bool pop = false;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
   
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: ColorConstant.greenA700,
        unselectedItemColor:
            isDark ? ColorConstant.whiteA700 : ColorConstant.gray500,
        selectedLabelStyle: TextStyle(
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
        ),
        currentIndex: selectedNavBarIndex,
        onTap: (index) {
          setState(() {
            selectedNavBarIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              ImageConstant.inActiveHome,
            ),
            activeIcon: SvgPicture.asset(
              ImageConstant.activeHome,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                ImageConstant.inActiveExplore,
              ),
              activeIcon: SvgPicture.asset(
                ImageConstant.activeExplore,
                
              ),
              label: "EXPLORE"),
        
       
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                ImageConstant.inActiveLibrary,
              ),
              activeIcon: SvgPicture.asset(
                ImageConstant.activeLibrary,
               
              ),
              label: "Library"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                ImageConstant.inActiveProfile,
              ),
              activeIcon: SvgPicture.asset(
                ImageConstant.activProfile,
               
              ),
              label: "Profile"),
        
        
        
        ],
      ),
      body: SafeArea(
        child: WillPopScope(
            onWillPop: () async {
              return (await showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            content: Text(
                              "Are you sure",
                              style:
                                  TextStyle(fontSize: 13, fontFamily: "Urbanist"),
                            ),
                            title: Text(
                              "Do you want to exit the app?",
                              style:
                                  TextStyle(fontSize: 13, fontFamily: "Urbanist"),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(false);
                                },
                                child: Text(
                                  "No",
                                  style: TextStyle(
                                      color: isDark ? Colors.white : Colors.black,
                                      fontSize: 13,
                                      fontFamily: "Urbanist"),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(true);
                                },
                                child: Text(
                                  "Yes",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 13,
                                      fontFamily: "Urbanist"),
                                ),
                              ),
                            ],
                          ))) ??
                  false;
            },
            child: screens[selectedNavBarIndex]),
      ),
    );
  }
}
