import 'package:flutter/material.dart';
import 'package:football/pages/player.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SafeArea(
            child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Hello Aditya,',
              textAlign: TextAlign.start,
              style: GoogleFonts.montserrat(fontSize: 22),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Welcome Back!',
              style: GoogleFonts.montserrat(
                  fontSize: 31, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 26,
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                    color: Color(0xffF6F6F6),
                    borderRadius: BorderRadius.circular(17)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.search,
                        size: 35,
                      ),
                      Text(
                        'Search for a league, team, players, etc. ',
                        style: GoogleFonts.montserrat(fontSize: 17),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 21,
            ),
            Text(
              'Recent Matches',
              style: GoogleFonts.montserrat(
                  fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 26,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xffE1DFDF)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Champions League - Group Stage: Matchday 3',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/images/acmilan.png',
                        scale: 0.9,
                      ),
                      Image.asset('assets/images/score.png', scale: 0.9),
                      Image.asset('assets/images/juventus.png', scale: 0.9)
                    ],
                  ),
                  Divider(
                    height: 5,
                    color: Colors.black54,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PlayerPage()));
                    },
                    child: Image.asset(
                      'assets/images/zlatan.png',
                      scale: 0.9,
                    ),
                  ),
                  Image.asset(
                    'assets/images/paulo.png',
                    scale: 0.9,
                  ),
                  Divider(
                    height: 5,
                    color: Colors.black54,
                  ),
                  Text('See full stats')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Top Transfers',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600, fontSize: 22),
            ),
            SizedBox(
              height: 31,
            ),
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/jack.png',
                    scale: 0.9,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/images/romelu.png',
                    scale: 0.9,
                  ),
                ],
              ),
            )
          ]),
        )),
      ),
    );
  }
}
