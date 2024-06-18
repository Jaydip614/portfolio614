import 'package:flutter/material.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({
    super.key,
    required this.onButtonTap,
  });
  final Function(int) onButtonTap;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    
    return Stack(
      children: [
        SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Image.asset(
            'assets/images/myportfolio_back.png',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Column(
            children: [
              const SizedBox(height: 100,),
              SizedBox(
                width: 275,
                child: Image.asset('assets/images/home_image3.png',),
              ),
              const SizedBox(height: 30,),
              const Text("HEY, I'M JAYDIP BARAIYA",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'SourceSans3-Bold',
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              const SizedBox(height: 10,),
              const Text('Flutter Developer, Transforming ideas into',
                style: TextStyle(
                  fontSize: 17.5,
                  fontFamily: 'SourceSans3-Regular',
                  color: Colors.black87,
                ),
              ),
              const Text('interactive Application for seamless user',
                style: TextStyle(
                  fontSize: 17.5,
                  fontFamily: 'SourceSans3-Regular',
                  color: Colors.black87,
                ),
              ),
              const Text('experiences...',
                style: TextStyle(
                  fontSize: 17.5,
                  fontFamily: 'SourceSans3-Regular',
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 50,),
              FilledButton(
                  onPressed: (){
                    onButtonTap(4);
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFF8E05C2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
                    child: Text('Projects',
                      style: TextStyle(
                        fontSize: 21,
                        fontFamily: 'SourceSans3-Regular',
                        color: Colors.white,
                      ),
                    ),
                  ),
              )
            ],
          ),
        )
      ]
    );
  }
}
