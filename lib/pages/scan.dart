import 'package:coffe_shop/uikit/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Scan extends StatefulWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    String paymentData = 'https://www.example.com/payment';
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: UIColor.background,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 26, right: 20, left: 20),
            child: Column(
              children: [
                SizedBox(
                  // color: Colors.amber,
                  width: double.infinity,
                  height: 40,
                  child: TabBar(
                    // isScrollable: true,
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    indicatorColor: UIColor.freshmint,
                    labelStyle:
                        GoogleFonts.poppins(fontSize: 20, color: Colors.black),
                    controller: tabController,
                    tabs: const [
                      Tab(
                        text: 'Scan & Pay',
                      ),
                      Tab(text: 'Rewards Only')
                    ],
                  ),
                ),
                const SizedBox(
                  height: 45.0,
                ),
                SizedBox(
                  height: 500,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.black,
                                Color(0xff252423),
                                Color(0xff5d5c5a),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(16)),
                        // height: 300,
                        width: MediaQuery.of(context).size.width,
                        padding:
                            const EdgeInsets.only(top: 40, right: 67, left: 67),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Rewards',
                                      style: GoogleFonts.poppins(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                    Text(
                                      '1300',
                                      style: GoogleFonts.poppins(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Center(
                                  child: Column(
                                    children: [
                                      Text(
                                        '\$52.17',
                                        style: GoogleFonts.poppins(
                                            fontSize: 60, color: Colors.white),
                                      ),
                                      QrImageView(
                                        data: paymentData,
                                        version: QrVersions.auto,
                                        size: 200,
                                        // backgroundColor: Colors.white,
                                        padding: const EdgeInsets.all(0),
                                        eyeStyle: const QrEyeStyle(
                                            eyeShape: QrEyeShape.square,
                                            color: Colors.white),
                                        dataModuleStyle:
                                            const QrDataModuleStyle(
                                                dataModuleShape:
                                                    QrDataModuleShape.square,
                                                color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/dolar.svg',
                                          width: 20,
                                          height: 20,
                                        ),
                                        Text(
                                          'Add Funds',
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/manage.svg',
                                          width: 20,
                                          height: 20,
                                        ),
                                        Text(
                                          'Manage',
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w200),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            Text(
                              '1300',
                              style: GoogleFonts.poppins(fontSize: 50),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            QrImageView(
                              data: paymentData,
                              version: QrVersions.auto,
                              size: 200,
                              padding: const EdgeInsets.all(0),
                              eyeStyle: const QrEyeStyle(
                                  eyeShape: QrEyeShape.square,
                                  color: Colors.black),
                              dataModuleStyle: const QrDataModuleStyle(
                                  dataModuleShape: QrDataModuleShape.square,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
