import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gp/slide.dart';
import 'package:gp/screens/home.dart';
final List<String> imgList = [
  'https://www.1001inventions.com/wp-content/uploads/2021/11/zamil04.jpg',
  'https://www.1001inventions.com/wp-content/uploads/2021/11/zamil13.jpg',
  'https://www.1001inventions.com/wp-content/uploads/2021/11/zamil15.jpg',
  'https://www.1001inventions.com/wp-content/uploads/2021/11/zamil02.jpg',
  'https://www.1001inventions.com/wp-content/uploads/2021/11/zamil05a.jpg',
  'https://www.1001inventions.com/wp-content/uploads/2021/11/zamil09.jpg'
];



class NearBy extends StatefulWidget {
  const NearBy({Key? key}) : super(key: key);

  @override
  State<NearBy> createState() => _FullscreenSliderDemo();
}

class _FullscreenSliderDemo extends State<NearBy> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              // autoPlay: false,
            ),
            items: imgList
                .map((item) => Container(
              color: Colors.black,
              padding: const EdgeInsets.all(50),
              child: Center(
                  child: Image.network(
                    item,
                    fit: BoxFit.cover,
                    height: height,
                  )),
            ))
                .toList(),
          );
        },
      ),
    );
  }
}


class Page52State extends StatefulWidget {
  const Page52State({Key? key}) : super(key: key);

  @override
  State<Page52State> createState() => _Page52State();
}

class _Page52State extends State<Page52State> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 600,
              width: 1289,
            ),

            ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                    filter:
                    ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0), //box
                    child: Container(
                        width: 343,
                        height: 200,
                        padding: const EdgeInsets.only(
                            left: 23,
                            right: 30,
                            top: 20,
                            bottom: 20),
                        //sizeofthebox
                        decoration: BoxDecoration(
                          color: const Color(0x66C4C4C4),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(text: const TextSpan(
                                  text: 'The nearby section are ',
                                  style:TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'afnan',
                                      fontSize: 17,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2),
                                  children: <TextSpan>[
                                    TextSpan(text: 'The 1001 Inventions exhibition ', style: TextStyle(color: Colors.white60)),

                                  ])),
/*
                                Text(
                                  "The nearby section are the Inventions exhibition section",
                                  style: GoogleFonts.workSans(
                                    textStyle: const TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),*/
                              const SizedBox(height: 10),
                              Expanded(
                                child: Text(
                                  "The 1001 Inventions exhibition is a permanent installation within Al-Zamil Science Oasis, part of the first of its kind science centre.", //in Al-Gassim Science Centre. The Centre is a community-driven project initiated by the people of Gassim region in collaboration with the Saudi Ministry of Education, supported by generous contributions of Al-Zamil Holding Group and a number of governmental and private institutions. The initiative aimed at enhancing science educational experiences for students through play, hands-on engagement and experimentation.
                                  style: GoogleFonts.workSans(
                                    textStyle: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const home()));


                                  },
                                  child: Container(
                                      width: 120,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          30,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Explore more",
                                            style: GoogleFonts.workSans(
                                              textStyle: const TextStyle(
                                                fontSize: 14,
                                                color: Colors.black,
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ])))),
          ],
        ),
      ),
    );
  }
}