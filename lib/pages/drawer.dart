import 'package:coffe_shop/uikit/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerBar extends StatefulWidget {
  const DrawerBar({Key? key}) : super(key: key);

  @override
  State<DrawerBar> createState() => _DrawerBarState();
}

class _DrawerBarState extends State<DrawerBar> {
  bool auth = true;
  bool faceid = true;
  bool passocde = false;
  @override
  Widget build(BuildContext context) => SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Drawer(
          backgroundColor: UIColor.background,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                ),
                ListTile(
                  trailing: Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/coffee.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    'Account',
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Alif Pandanhi Febrio',
                    style: GoogleFonts.poppins(fontSize: 12),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Profile',
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      ListTile(
                        title: Text(
                          'Personal Info',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                          ),
                        ),
                        trailing: SvgPicture.asset('assets/icons/info.svg'),
                      ),
                      ListTile(
                        title: Text(
                          'Cards & Payment',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                          ),
                        ),
                        trailing: SvgPicture.asset('assets/icons/card.svg'),
                      ),
                      ListTile(
                        title: Text(
                          'Transaction History',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                          ),
                        ),
                        trailing: SvgPicture.asset('assets/icons/history.svg'),
                      ),
                      ListTile(
                        title: Text(
                          'Privacy & Data',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                          ),
                        ),
                        trailing: SvgPicture.asset('assets/icons/privacy.svg'),
                      ),
                      ListTile(
                        title: Text(
                          'Account ID',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                          ),
                        ),
                        trailing: SvgPicture.asset('assets/icons/id.svg'),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Security',
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      ListTile(
                        title: Text(
                          '2-Factor Authentication',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                          ),
                        ),
                        trailing: Switch(
                          inactiveThumbColor: Colors.white,
                          trackOutlineColor: MaterialStateProperty.all(
                              const Color(0xffc9c7c5)),
                          inactiveTrackColor: const Color(0xffc9c7c5),
                          activeTrackColor: const Color(0xff34c759),
                          activeColor: Colors.white,
                          value: auth,
                          onChanged: (value) {
                            setState(() {
                              auth = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Face ID',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                          ),
                        ),
                        trailing: Switch(
                          inactiveThumbColor: Colors.white,
                          trackOutlineColor: MaterialStateProperty.all(
                              const Color(0xffc9c7c5)),
                          inactiveTrackColor: const Color(0xffc9c7c5),
                          activeTrackColor: const Color(0xff34c759),
                          activeColor: Colors.white,
                          value: faceid,
                          onChanged: (value) {
                            setState(() {
                              faceid = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Passcode Lock',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                          ),
                        ),
                        trailing: Switch(
                          inactiveThumbColor: Colors.white,
                          trackOutlineColor: MaterialStateProperty.all(
                              const Color(0xffc9c7c5)),
                          inactiveTrackColor: const Color(0xffc9c7c5),
                          activeTrackColor: const Color(0xff34c759),
                          activeColor: Colors.white,
                          value: passocde,
                          onChanged: (value) {
                            setState(() {
                              passocde = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
