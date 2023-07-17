import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool passenable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image(
            image: AssetImage('images/Main_Menu.png'),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          // Positioned(
          //   top: 470,
          //   left: 75,
          //   child: GestureDetector(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => const DetailsScreen()),
          //       );
          //     },
          //     child: Text(
          //       'Skip',
          //       textAlign: TextAlign.center,
          //       style: GoogleFonts.inter(
          //         fontSize: 15,
          //         fontWeight: FontWeight.normal,
          //         color: Colors.black,
          //       ),
          //     ),
          //   ),
          // ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: const Image(
                            image: AssetImage('images/cindyyy.jpg'),
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Column(
                        children: [
                          Text(
                            'Hi! CINDY PUSPITA M.S',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(120, 76, 22, 1),
                            ),
                          ),
                          Text(
                            'SILAHKAN CARI BUKU YANG ANDA BUTUHKAN',
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 60),
                      const Image(
                        image: AssetImage('images/amik_logo.png'),
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                  TextFormField(
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                      // hintText: 'Search',
                      labelText: 'Search',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your text';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Column(
                        children: [
                          const Image(
                            image: AssetImage('images/buku_SI1.jpg'),
                            width: 150,
                            height: 150,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const DetailsScreen()),
                              );
                            },
                            child: Text(
                              'SISTEM INFORMASI BISNIS',
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Text(
                            'Tersedia',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Image(
                            image: AssetImage('images/novel_2.jpg'),
                            width: 150,
                            height: 150,
                          ),
                          Text(
                            'BULAN',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Tersedia',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Column(
                        children: [
                          const Image(
                            image: AssetImage('images/novel_luar2.jpg'),
                            width: 150,
                            height: 150,
                          ),
                          Text(
                            'THE LAST SEANCE',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Tersedia',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Image(
                            image: AssetImage('images/novel_3.jpg'),
                            width: 150,
                            height: 150,
                          ),
                          Text(
                            'A Study In Scarlett',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Tersedia',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
