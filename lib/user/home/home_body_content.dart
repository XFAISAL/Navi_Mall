// ignore_for_file: prefer_const_constructors, unnecessary_import, unused_import, sized_box_for_whitespace, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navi_mall_app/user/home/category_info.dart';
import 'package:navi_mall_app/colors.dart' as color;
import 'package:navi_mall_app/colors.dart';
import 'package:navi_mall_app/user/home/mall_info.dart';

class HomeBodyContentScreen extends StatefulWidget {
  const HomeBodyContentScreen({Key? key}) : super(key: key);

  @override
  State<HomeBodyContentScreen> createState() => _HomeBodyContentScreenState();
}

class _HomeBodyContentScreenState extends State<HomeBodyContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(bottom: 16),
        children: [
          Container(
            color: color.AppColor.gray.withOpacity(0.1),
            width: double.infinity,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  child: TextField(
                    cursorColor: color.AppColor.matteBlack,
                    style: GoogleFonts.lato(),
                    decoration: InputDecoration(
                      hintText:
                          'Search for shopping center, brands, stores ...',
                      hintStyle: TextStyle(color: color.AppColor.gray),
                      suffixIcon: Icon(
                        Icons.search,
                        color: color.AppColor.matteBlack,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        borderSide:
                            BorderSide(width: 1, color: color.AppColor.gray),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        borderSide: BorderSide(
                            width: 5,
                            color: color.AppColor.matteBlack.withOpacity(0.1)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Container(
            color: color.AppColor.homePageBackground,
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Malls',
                          style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(221, 62, 123, 61))),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  //color: color.AppColor.gray.withOpacity(0.2),
                  padding: const EdgeInsets.all(5),
                  child: ListView(
                    //itemCount: 3,
                    shrinkWrap: true,
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    // itemBuilder: (BuildContext context, int index) {
                    //   return Column(
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MallInfoScreen(),
                              ));
                            },
                            child: Card(
                              shadowColor: color.AppColor.buttons,
                              //elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: color.AppColor.gray.withOpacity(0.2),
                                  width: 2,
                                ),
                              ),
                              child: Image(
                                height: 100,
                                width: 100,
                                image: AssetImage('assets/images/avenues.png'),
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MallInfoScreen(),
                              ));
                            },
                            child: Text(
                              'Avenues',
                              style: GoogleFonts.lato(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: color.AppColor.matteBlack),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MallInfoScreen(),
                              ));
                            },
                            child: Card(
                              shadowColor: color.AppColor.buttons,
                              //elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: color.AppColor.gray.withOpacity(0.2),
                                  width: 2,
                                ),
                              ),
                              child: Image(
                                height: 100,
                                width: 100,
                                image:
                                    AssetImage('assets/images/dragon_city.png'),
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MallInfoScreen(),
                              ));
                            },
                            child: Text(
                              'Dragon City',
                              style: GoogleFonts.lato(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: color.AppColor.matteBlack),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MallInfoScreen(),
                              ));
                            },
                            child: Card(
                              shadowColor: color.AppColor.buttons,
                              //elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: color.AppColor.gray.withOpacity(0.2),
                                  width: 2,
                                ),
                              ),
                              child: Image(
                                height: 100,
                                width: 100,
                                image: AssetImage('assets/images/dilmunia.png'),
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MallInfoScreen(),
                              ));
                            },
                            child: Text(
                              'Mall Of Dilmunia',
                              style: GoogleFonts.lato(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: color.AppColor.matteBlack),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MallInfoScreen(),
                              ));
                            },
                            child: Card(
                              shadowColor: color.AppColor.buttons,
                              //elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  color: color.AppColor.gray.withOpacity(0.2),
                                  width: 2,
                                ),
                              ),
                              child: Image(
                                height: 100,
                                width: 100,
                                image:
                                    AssetImage('assets/images/city_center.png'),
                              ),
                            ),
                          ),
                          SizedBox(height: 4),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MallInfoScreen(),
                              ));
                            },
                            child: Text(
                              'City Center',
                              style: GoogleFonts.lato(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: color.AppColor.matteBlack),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 10,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color.AppColor.gray.withOpacity(0.1),
              ),
            ),
          ),
          Container(
            color: color.AppColor.homePageBackground,
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Categories',
                          style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(221, 62, 123, 61))),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  color: color.AppColor.gray.withOpacity(0.1),
                  padding: const EdgeInsets.all(5),
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      categoryItem(Icons.shopping_bag, 'Shopping',
                          Color.fromARGB(255, 77, 168, 92)),
                      categoryItem(Icons.dining, 'Dining',
                          Color.fromARGB(255, 113, 125, 70)),
                      categoryItem(Icons.attractions, 'Attractions',
                          Color.fromARGB(255, 187, 114, 85)),
                      categoryItem(Icons.event, 'Events',
                          Color.fromARGB(255, 158, 185, 76)),
                      categoryItem(Icons.wash, 'Services',
                          Color.fromARGB(255, 122, 96, 45)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 10,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color.AppColor.gray.withOpacity(0.1),
              ),
            ),
          ),
          // Trending List
          Container(
            color: color.AppColor.homePageBackground,
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Text('Trending',
                          style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(221, 62, 123, 61))),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 6,
                ),
                Expanded(
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    //color: color.AppColor.gray.withOpacity(0.2),
                    child: ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      reverse: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                              color: color.AppColor.gray.withOpacity(0.1),
                              child: ListTile(
                                isThreeLine: false,
                                leading: Image(
                                  height: 70,
                                  width: 70,
                                  image: AssetImage(
                                      'assets/images/city_center.png'),
                                ),
                                title: Text(
                                  'Store Name',
                                  style: GoogleFonts.lato(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                subtitle: Text(
                                  'Mall Name',
                                  style: GoogleFonts.lato(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  // side: BorderSide(
                                  //   color: color.AppColor.gray.withOpacity(0.2),
                                  //   width: 1,
                                  // ),
                                ),
                                child: Image(
                                  height: 180,
                                  width: MediaQuery.of(context).size.width,
                                  image: AssetImage(
                                      'assets/images/mall_promotion.png'),
                                ),
                              ),
                            ),
                            SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.share,
                                    color: color.AppColor.buttons,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Navigate',
                                    style: GoogleFonts.roboto(
                                      color: color.AppColor.white,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    shape: StadiumBorder(),
                                    primary: Color.fromARGB(255, 7, 81, 6)
                                        .withOpacity(0.4),
                                    //primary: color.AppColor.buttons,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: color.AppColor.gray.withOpacity(0.2),
                              thickness: 1.5,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  categoryItem(IconData category_icon, String text, Color color_icon) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => (const CategoryInfoScreen()),
            ));
          },
          child: Container(
            height: 100,
            width: 105,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
              child: Icon(
                category_icon,
                size: 65,
                color: color_icon,
              ),
            ),
          ),
        ),
        SizedBox(height: 4),
        InkWell(
          onTap: () {},
          child: Text(
            text,
            style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: color.AppColor.matteBlack),
          ),
        ),
      ],
    );
  }
}
