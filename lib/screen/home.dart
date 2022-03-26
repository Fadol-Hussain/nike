import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/horizntal_list.dart';
import '../widget/vertical_list.dart';
import '../screen/detali.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Online',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 36,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Detail(),
                    ),
                  );
                },
                child: Text(
                  'Find a Nike Store',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 349,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return const HorizntalList(
                      starColor: 0xFF9288E4,
                      endColor: 0xFF534EA7,
                      courseHeadLine: 'Nike NYC',
                      courseTitle: 'SPORT',
                      courseImage: "assets/images/img.jpg");
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sport Shose For Man',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              Text(
                'From Over 80 Shose',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF9C9A9A),
                  fontSize: 14,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const VerticaList(
                  courseImaged: "assets/images/th.jpg",
                  courseTitle: 'Running Shose',
                  courseDuration: 'Nike',
                  courseRating: 3.0,
                );
              }),
        ],
      )),
    );
  }
}
