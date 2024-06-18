import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      // color: Colors.black,
      color: const Color(0xFF520077),
      child: Column(
        children: [
          const SizedBox(height: 30,),
          const Text("JAYDIP BARAIYA",
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'SourceSans3-Bold',
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),
          const SizedBox(height: 12,),
          const Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Text('A Frontend focused Web Developer building the Frontend of Websites and Web Applications that leads to the success of the overall product',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'SourceSans3-Regular',
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              textAlign: TextAlign.center,
              ),
          ),
          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 32,
                  height: 32,
                  child: Image.asset('assets/images/linkedin-white.png',),
              ),
              const SizedBox(width: 7,),
              SizedBox(
                width: 50,
                height: 50,
                child: Image.asset('assets/images/github-white.png',),
              ),
              const SizedBox(width: 7,),
              SizedBox(
                width: 30,
                height: 30,
                child: Image.asset('assets/images/instagram-white.png',),
              ),
            ],
          ),
          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 15,
                    height: 15,
                    child: Image.asset('assets/images/copyright-white.png'),
                  ),
                  const SizedBox(height: 3,)
                ],
              ),
              const SizedBox(width: 2,),
              const Text('Copyright 2024. All Rights Reserved',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Designed by ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13
                ),
              ),
              InkWell(
                onTap: (){},
                child: const Text('Jaydip Baraiya',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      // decoration: TextDecoration.underline,
                      // decorationColor: Colors.white,
                      // decorationThickness: 1.5,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25,)
        ],
      ),
    );
  }
}
