import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayerInfo extends StatelessWidget {
  const PlayerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg.png'),
                      fit: BoxFit.fitWidth)),
              width: double.infinity,
              // height: MediaQuery.of(context).size.height / 3,
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/images/info.png'),
                    Image.asset('assets/images/cartoon.png')
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                infocard(
                  text1: '570',
                  text2: 'GOALS',
                ),
                infocard(
                  text1: '41',
                  text2: 'AGE',
                ),
                infocard(
                  text1: 'ST',
                  text2: 'POSITION',
                ),
              ],
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.02),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Teams Played For',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600, fontSize: 24),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/images/manu.png'),
                Image.asset('assets/images/ac.png'),
                Image.asset('assets/images/barca.png'),
                Image.asset('assets/images/juvu.png'),
              ],
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.02),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Latest Match',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600, fontSize: 24),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.88,
              height: MediaQuery.of(context).size.height * 0.22,
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text('See full stats'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class infocard extends StatelessWidget {
  String text1, text2;
  infocard({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            text1,
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 36),
          ),
          Column(
            children: [
              Divider(
                height: 3,
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text2,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w300, fontSize: 17),
              ),
            ],
          )
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.125,
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 214, 214, 214),
          borderRadius: BorderRadius.circular(12)),
    );
  }
}
