import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/colors.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secondScreenBackground,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xFFF2C94C)),
                  child: SvgPicture.asset("assets/boloto.svg")),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'Peter Mach',
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 14, color: Colors.black.withOpacity(0.5)),
                ),
              ),
              Text(
                'Mind Deep Relax',
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Join the Community as we prepare over 33 days to '
                  'relax and feel joy with the mind and happiness '
                  'session across the World.',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 15,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.only(top: 24),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/fourth");
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF039EA2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Wrap(children: [
                      SvgPicture.asset("assets/ikonka.svg"),
                      Text(
                        'Play Next Session',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              songWidget(
                  const Color(0xFF2F80ED),
                  'Sweet Memories',
                  'December 29 Pre-Launch'),
              songWidget(
                  const Color(0xFF039EA2),
                  'A Day Dream',
                  'December 29 Pre-Launch'),
              songWidget(
                  const Color(0xFFF09235),
                  'Mind Explore',
                  'December 29 Pre-Launch'),
            ]),
          ),
        ));
  }

  Container songWidget(
    Color color,
    String title,
    String date,
  ) {
    return Container(
        padding: const EdgeInsets.fromLTRB(0, 15.5, 16, 15.5),
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: color,
                  minimumSize: Size.zero,
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: SvgPicture.asset("assets/ikonka.svg"),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    date,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 12,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
          ],
        ));
  }
}
