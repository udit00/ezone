import 'package:ezone/ui/common_ui/common_colors.dart';
import 'package:ezone/ui/home/home_view.dart';
import 'package:ezone/ui/profile/profile_view.dart';
import 'package:ezone/ui/search/search_view.dart';
import 'package:flutter/material.dart';


class bottom_navigation_handler extends StatefulWidget {
  const bottom_navigation_handler({Key? key}) : super(key: key);

  @override
  State<bottom_navigation_handler> createState() => _bottom_navigation_handlerState();
}

class _bottom_navigation_handlerState extends State<bottom_navigation_handler> {
  int selectedPage = 0;

  pageCaller(int index) {
    switch (index) {
      case 0:
        {
          return HomeView();
        }
      case 1:
        {
          return SearchView();
        }
      case 2:
        {
          return ProfileView();
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pageCaller(selectedPage),
        // _pageOptions[selectedPage],     // this will load page 1 from pageOption array list
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: CommonColors.bottomNavigationColor,
            selectedItemColor: CommonColors.lightAppBarColor,
            selectedFontSize: 14.0,
            unselectedFontSize: 12.0,
            currentIndex: selectedPage,
            onTap: (int index) {
              setState(() {
                selectedPage = index;
              });
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/home.png",
                    height: 20,
                    color: selectedPage == 0 ?  CommonColors.lightAppBarColor : CommonColors.darkAppBarColor,
                  ),
                  // icon:Icon(Icons.menu_outlined,color:  selectedPage==0?Colors.white: Colors.grey,),
                  label: 'Home'),
              BottomNavigationBarItem(

                icon: Icon(Icons.search,size: 25,color: selectedPage == 1 ?  CommonColors.lightAppBarColor: CommonColors.darkAppBarColor,),
                  label: 'Search'),
              BottomNavigationBarItem(
                // icon:Image.asset("assets/images/bookin2.png",height:20,color: selectedPage==2?Colors.red: Colors.grey,),
                  icon: Image.asset(
                    "assets/images/user.png",
                    height: 20,
                    color: selectedPage == 2 ?  CommonColors.lightAppBarColor : CommonColors.darkAppBarColor,
                  ),
                  label: 'Profile'),
            ]));
  }

  void callBack(int index) {
    setState(() {
      selectedPage = index;
    });
  }
}
