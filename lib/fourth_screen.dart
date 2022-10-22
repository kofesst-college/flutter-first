import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/colors.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fourthScreenBackground,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/medinow.svg'),
                      SizedBox(
                        height: 42,
                        child: Center(
                          child: Text(
                            'Meditate With Us!',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 17, color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        margin: const EdgeInsets.only(top: 50),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("/first");
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                              'Sign in with Apple',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 16, color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        margin: const EdgeInsets.only(top: 10),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFCDFDFE),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          child: Text(
                            'Continue with Email or Phone',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 34,
                        margin: const EdgeInsets.only(top: 10),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Continue With Google',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16, color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Expanded(
              child: Center(child: SvgPicture.asset('assets/chel_sidit.svg')))
        ],
      ),
    );
  }
}
