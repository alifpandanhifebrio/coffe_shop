import 'package:coffe_shop/uikit/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                            'Sign In',
                            style: GoogleFonts.poppins(
                                color: UIColor.dark_brown,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "It’s coffee time! Login and lets get all the coffee in the world! Or at least iced coffee. ",
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
                                suffixIconColor: Colors.black,
                                suffixIcon:
                                    const Icon(Icons.remove_red_eye_outlined),
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
                            'Login',
                            style: GoogleFonts.poppins(fontSize: 14),
                          )),
                    ),
                    const SizedBox(
                      height: 1.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Forgot Password?',
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: UIColor.dark_brown)),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Reset Here',
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: UIColor.freshmint),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Text("Don't have an account?",
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
                          onPressed: () {},
                          child: Text(
                            'Create New Account',
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
