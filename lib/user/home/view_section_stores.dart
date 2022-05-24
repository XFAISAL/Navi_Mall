import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navi_mall_app/colors.dart' as color;

class ViewSectionStores extends StatefulWidget {
  const ViewSectionStores({Key? key}) : super(key: key);

  @override
  State<ViewSectionStores> createState() => _ViewSectionStoresState();
}

class _ViewSectionStoresState extends State<ViewSectionStores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color.AppColor.homePageBackground,
        elevation: 1,
        centerTitle: true,
        leading: BackButton(
          color: Colors.black87,
          onPressed: () {
            //Navigator.pop(context);
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Area of Interest",
          style: GoogleFonts.playfairDisplay(
            textStyle: Theme.of(context).textTheme.headline5,
            fontSize: 25,
            color: Colors.black87,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
                child: ListView(
              children: [
                getStore('assets/images/splash_logo.png', 'Splash Fashions'),
                getStore('assets/images/zara.png', 'Zara'),
                getStore('assets/images/centerpoint.png', 'Centerpoint'),
                getStore('assets/images/milano.png', 'Milano Fashions'),
              ],
            )),
          ],
        ),
      ),
    );
  }

  getStore(String image, String name) {
    return ListTile(
      leading: Image(width: 70, image: AssetImage(image)),
      title: Text(
        name,
        style: GoogleFonts.lato(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: ElevatedButton(
        onPressed: () {},
        child: Text(
          'View',
          style: GoogleFonts.lato(
            fontSize: 18,
            color: color.AppColor.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
        ),
      ),
    );
  }
}
