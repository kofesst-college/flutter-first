import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/colors.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: firstScreenBackground,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              Stack(
                children: [
                  Image.asset("assets/kit.png"),
                  Positioned(
                      bottom: 0,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset("assets/blinchik.png")),
                  Positioned.fill(
                      bottom: 0,
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000),
                                border: Border.all(
                                    width: 10, color: const Color(0xFFFAF6F5))),
                            child: FloatingActionButton.large(
                                onPressed: () {
                                  Navigator.of(context).pushNamed("/second");
                                },
                                backgroundColor: const Color(0xFFFE7A15),
                                child: SvgPicture.asset("assets/play.svg",
                                    width: 24)),
                          ))),
                ],
              ),
              Text(
                'Secrets of Atlantis',
                style: GoogleFonts.montserrat(
                    fontSize: 32,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 8),
                      side:
                          const BorderSide(width: 1, color: Color(0xFFFE7A15))),
                  child: Text(
                    'Follow',
                    style: GoogleFonts.montserrat(
                      fontSize: 17,
                      color: const Color(0xFFFE7A15),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                              color: Color(0xFF403285),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                              )),
                          child: Column(
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/codin.png",
                                        height: 60, width: 60),
                                    const SizedBox(width: 10),
                                    Column(children: [
                                      Text(
                                        'Codin',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      cardChip(Text('Host',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500)))
                                    ]),
                                    const SizedBox(width: 16),
                                    Flexible(
                                      child: Text(
                                          'The Secrets of Atlantis podcast is '
                                          'designed for all fantasy enthusiasts, '
                                          'everything from debunking underwat... see '
                                          'more',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ]),
                              const SizedBox(height: 24),
                              Row(children: [
                                cardChip(Row(
                                  children: [
                                    Text('4.8',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700)),
                                    // Image.asset("assets/star.png"),
                                    const SizedBox(width: 8),
                                    Text('(10)',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            fontWeight: FontWeight.w400))
                                  ],
                                )),
                                const SizedBox(width: 8.7),
                                SvgPicture.asset("assets/dot.svg"),
                                const SizedBox(width: 8.7),
                                cardChip(
                                  Text('Fantasy',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700)),
                                ),
                                const Spacer(),
                                SvgPicture.asset("assets/bell.svg")
                              ])
                            ],
                          )),
                      Container(
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                              color: Color(0xFF1D0F5A),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40),
                              )),
                          child: Row(children: [
                            Image.asset("assets/people.png", height: 40),
                            const Spacer(),
                            SvgPicture.asset("assets/live.svg")
                          ]))
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF8D910),
                        borderRadius: BorderRadius.circular(53)),
                    child: Row(children: [
                      SvgPicture.asset("assets/kubiki2.svg",
                      height: 80),
                      const SizedBox(width: 16),
                      Flexible(
                        child: Text('Invite your friends to join',
                            style: GoogleFonts.montserrat(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w700)),
                      ),
                      SvgPicture.asset("assets/share.svg"),
                    ])),
              )
            ]),
          ),
        ));
  }

  Container cardChip(Widget child) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 9),
      decoration: BoxDecoration(
          color: const Color(0xFF262044),
          borderRadius: BorderRadius.circular(8)),
      child: child,
    );
  }
}
