import 'package:ezone/ui/common_ui/common_colors.dart';
import 'package:flutter/material.dart';

class ScreenDimension {
  static double width = 0.0;
  static double height = 0.0;
}
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List categoryList = [
      {"name": "name", "img": "assets/images/user.png"},
      {"name": "name", "img": "assets/images/user.png"},
      {"name": "name", "img": "assets/images/user.png"},
      {"name": "name", "img": "assets/images/user.png"},
      {"name": "name", "img": "assets/images/user.png"},
      {"name": "name", "img": "assets/images/user.png"},
    ];
    return  Scaffold(
      appBar: AppBar(backgroundColor: CommonColors.bottomNavigationColor,),
      body: SafeArea(
        child:
        SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Categories',
                      // codeMasterModel.prmname.toString(),
                      style: TextStyle(
          
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Container(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, left: 10, right: 10),
                        decoration: BoxDecoration(
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(width: 0.5, )),
                        child: const Text(
                          'View More',
                          style: TextStyle( fontSize: 12),
                        )),
                  ],
                ),
          
                SizedBox(
                  height: ScreenDimension.height*0.06,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryList == null ? 0 : categoryList.length,
                      itemBuilder: (BuildContext context, int index) {
                        Map dataList = categoryList[index];
                        return InkWell(
                          onTap: () {
          
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor:
                                  Color.fromRGBO(128, 128, 128, 0.4),
                                  child: CircleAvatar(
                                    radius: 28,
                                    backgroundImage: AssetImage(dataList["img"]),
          
                                  ),
                                ),
          
                                Text(
                                  dataList["name"],
                                  style: const TextStyle(),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
          
            SizedBox(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryList == null ? 0 : categoryList.length,
                      itemBuilder: (BuildContext context, int index) {
                        Map dataList = categoryList[index];
                        return InkWell(
                          onTap: () {
          
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:100,
                                  width:100,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Colors.black, Colors.black],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Color.fromRGBO(0, 0, 0, 0.6),

                                  ),
                                  child: const Center(
                                    child: Text(
                                      'data',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),

                                Text(
                                  dataList["name"],
                                  style: const TextStyle(),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryList == null ? 0 : categoryList.length,
                      itemBuilder: (BuildContext context, int index) {
                        Map dataList = categoryList[index];
                        return InkWell(
                          onTap: () {

                          },
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:100,
                                  width:100,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Colors.black, Colors.black],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Color.fromRGBO(0, 0, 0, 0.6),

                                  ),
                                  child: const Center(
                                    child: Text(
                                      'data',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),

                                Text(
                                  dataList["name"],
                                  style: const TextStyle(),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
          
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Other Items',
                      style: TextStyle(
          
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
          
                GridView.count(
                  crossAxisCount: 2,
                  controller: ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: List.generate(10, (index) {
                    return Container(
                      margin: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),

                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.black, Colors.black],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromRGBO(0, 0, 0, 0.6),

                        ),
                        child: const Center(
                          child: Text(
                            'data',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    );
                  }),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
