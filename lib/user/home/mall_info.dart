// ignore_for_file: unnecessary_const, prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launch/flutter_launch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navi_mall_app/colors.dart' as color;
import 'package:getwidget/getwidget.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class MallInfoScreen extends StatefulWidget {
  const MallInfoScreen({Key? key}) : super(key: key);

  @override
  State<MallInfoScreen> createState() => _MallInfoScreenState();
}

class _MallInfoScreenState extends State<MallInfoScreen> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color.AppColor.homePageBackground,
        elevation: 0,
        centerTitle: true,
        // leading: BackButton(
        //   color: Colors.black87,
        //   onPressed: () {
        //     //Navigator.pop(context);
        //     Navigator.of(context).pop();
        //   },
        // ),
        title: Text(
          "City Center",
          style: GoogleFonts.playfairDisplay(
            textStyle: Theme.of(context).textTheme.headline5,
            fontSize: 25,
            color: Colors.black87,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      backgroundColor: color.AppColor.homePageBackground,
      body: ListView(
        children: [
          Stack(
            children: [
              const Image(
                  image: const AssetImage('assets/images/city_center_loc.png'),
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover),
              Positioned(
                // The Positioned widget is used to position the text inside the Stack widget
                bottom: 10,
                left: 10,

                child: Container(
                  // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black87.withOpacity(0.4),
                  padding: const EdgeInsets.all(8),

                  child: Row(
                    children: [
                      const Text(
                        'Open' + '',
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.lightBlue),
                      ),
                      const SizedBox(width: 5),
                      const SizedBox(
                        child: Text(
                          '-',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Closes' + '12 am',
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse('https://www.facebook.com/CityCentreBahrain/'),
                builder: (context, followLink) => GFIconButton(
                  shape: GFIconButtonShape.circle,
                  onPressed: followLink,
                  icon: const Icon(FontAwesomeIcons.facebook),
                  color: const Color(0xff3b5998),
                ),
              ),
              const SizedBox(width: 10),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse(''),
                builder: (context, followLink) => GFIconButton(
                  shape: GFIconButtonShape.pills,
                  onPressed: () async {
                    await FlutterLaunch.launchWhatsapp(
                        phone: '+971800226255', message: '');
                  },
                  icon: const Icon(FontAwesomeIcons.whatsapp),
                  color: GFColors.SUCCESS,
                ),
              ),
              const SizedBox(width: 10),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse('https://www.instagram.com/citycentrebahrain/'),
                builder: (context, followLink) => GFIconButton(
                    shape: GFIconButtonShape.pills,
                    color: const Color(0xffFCAF45),
                    icon: const Icon(FontAwesomeIcons.instagram),
                    onPressed: followLink),
              ),
              const SizedBox(width: 10),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse('https://www.citycentrebahrain.com/'),
                builder: (context, followLink) => GFButton(
                  onPressed: followLink,
                  shape: GFButtonShape.pills,
                  type: GFButtonType.outline2x,
                  color: GFColors.INFO,
                  child: Text('Website',
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "City Centre Bahrain is the largest mixed-use development in Bahrain offering the best shopping, leisure, and entertainment experience under one roof. Strategically located on Sheikh Khalifa Bin Salman Al Khalifa Highway in the heart of Manama.City Centre Bahrain has introduced a world-class retail ambiance and hundreds of other 'firsts' to the Kingdom including 150 of its over 340 internationally reputed brands making their debut in the country. The Centre’s stunning entertainment offer includes the region’s first indoor/outdoor temperature controlled 15,000 square meter Wahooo! Water-park, Bahrain’s biggest cinema complex Cineco 20, and a family entertainment centre for children and young adults, Magic Planet. For food and beverage options, over 60 dining outlets have been lined up to offer the most popular as well as exotic choices from all over the world",
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'View Map / Visit Mall',
              style: GoogleFonts.lato(fontSize: 18, color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              fixedSize: Size(100, 45),
            ),
          ),
          SizedBox(height: 14),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Visit Stores',
              style: GoogleFonts.lato(fontSize: 18, color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              fixedSize: Size(100, 45),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
