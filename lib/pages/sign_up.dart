import 'package:coffe_shop/uikit/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColor.background,
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: double.infinity,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset(
              'assets/images/splash_screen_coffee.svg',
              fit: BoxFit.contain,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FittedBox(
              child: Container(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 40),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sign Up',
                            style: GoogleFonts.poppins(
                                color: UIColor.dark_brown,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "We are so excited you’re ready to become apart of our coffee network! don’t forget  check out your perks!",
                            style: GoogleFonts.montserrat(
                                color: UIColor.dark_brown,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Username',
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: UIColor.dark_brown),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Material(
                            elevation: 10,
                            shadowColor: Colors.black,
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                disabledBorder: InputBorder.none,
                                hintStyle: GoogleFonts.poppins(fontSize: 16),
                                hintText: 'Enter Username',
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Email',
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: UIColor.dark_brown),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Material(
                            elevation: 10,
                            shadowColor: Colors.black,
                            child: TextField(
                              decoration: InputDecoration(
                                suffixIconColor: Colors.black,
                                suffixIcon:
                                    const Icon(Icons.remove_red_eye_outlined),
                                fillColor: Colors.white,
                                filled: true,
                                disabledBorder: InputBorder.none,
                                hintStyle: GoogleFonts.poppins(fontSize: 16),
                                hintText: 'Enter Email',
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            'Password',
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: UIColor.dark_brown),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Material(
                            elevation: 10,
                            shadowColor: Colors.black,
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                disabledBorder: InputBorder.none,
                                hintStyle: GoogleFonts.poppins(fontSize: 16),
                                hintText: 'Enter Password',
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      decoration: const BoxDecoration(
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.black
                          //   )
                          // ]
                          ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              backgroundColor: UIColor.dark_brown,
                              foregroundColor: Colors.white),
                          onPressed: () {},
                          child: Text(
                            'Register',
                            style: GoogleFonts.poppins(fontSize: 14),
                          )),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Center(
                      child: Text("Already have an account?",
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: UIColor.dark_brown)),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      decoration: const BoxDecoration(
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.black
                          //   )
                          // ]
                          ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              backgroundColor: UIColor.dark_brown,
                              foregroundColor: Colors.white),
                          onPressed: () {
                            // Navigator.
                          },
                          child: Text(
                            'Sign In',
                            style: GoogleFonts.poppins(fontSize: 14),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
