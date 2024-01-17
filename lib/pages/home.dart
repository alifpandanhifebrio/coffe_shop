import 'package:coffe_shop/pages/sign_in.dart';
import 'package:coffe_shop/pages/sign_up.dart';
import 'package:coffe_shop/state_util.dart';
import 'package:coffe_shop/uikit/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColor.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 22, right: 22, left: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning!',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: UIColor.dark_brown),
              ),
              Text(
                'Login and get free☕',
                style: GoogleFonts.poppins(
                    fontSize: 20, color: UIColor.dark_brown),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 13, left: 15, right: 15, bottom: 27),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    color: UIColor.freshmint),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Join the Rewards program to enjoy free beverages, special offers and more!',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontSize: 20, color: UIColor.white, height: 1.25),
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 60,
                              width: 156,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  foregroundColor:
                                      MaterialStateProperty.all(UIColor.white),
                                  backgroundColor: MaterialStateProperty.all(
                                      UIColor.dark_brown),
                                ),
                                onPressed: () {
                                  Get.to(const SignUp());
                                },
                                child: Text(
                                  'Join Now',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30.0,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 60,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    foregroundColor: MaterialStateProperty.all(
                                        UIColor.dark_brown),
                                    backgroundColor: MaterialStateProperty.all(
                                        UIColor.brown),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Guest Order',
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Material(
                elevation: 8,
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 20, right: 30, left: 30, bottom: 23),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                      color: Colors.white),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'Already have an account?',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        SizedBox(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          child: OutlinedButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(50),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22))),
                              side: MaterialStateProperty.all(
                                const BorderSide(
                                    color: UIColor.freshmint, width: 2.5),
                              ),
                            ),
                            onPressed: () {
                              Get.to(const SignIn());
                            },
                            child: Text(
                              'Login',
                              style: GoogleFonts.poppins(
                                  fontSize: 16, color: UIColor.freshmint),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Drinks',
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See all',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: UIColor.freshmint),
                      ))
                ],
              ),
              SizedBox(
                height: 174,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageCoffe.length,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        child: Container(
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            imageCoffe[index],
                            // fit: BoxFit.fill,
                          ),
                          Text(
                            'Hot Coffees',
                            style: GoogleFonts.poppins(fontSize: 15),
                          )
                        ],
                      ),
                    ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final List<String> imageCoffe = [
  'assets/images/coffee.png',
  'assets/images/coffee_2.png',
  'assets/images/coffee_3.png',
];
