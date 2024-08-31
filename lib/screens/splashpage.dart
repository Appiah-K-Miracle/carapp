import 'package:carapp/constants/colors.dart';
import 'package:carapp/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool isFinish = false;
  @override
  Widget build(BuildContext context) {

    return  SafeArea(
      child: Scaffold(
        body: Column(

          children: [
            Image.asset('./assets/images/bg4.png', height: 400, width: 400,),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Text('This app provide you with driving tips, traffic laws,'
                  ' safe guide and more as a driver you need to know.',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50,
                right: 50
              ),
              child: SwipeableButtonView(

                buttonText: 'Slide To Start',
                buttontextstyle: const TextStyle(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.bold),
                buttonColor: Colors.white,
                buttonWidget: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: otherColor,
                ),
                activeColor: otherColor,
                isFinished: isFinish,
                onWaitingProcess: () {
                  Future.delayed(Duration(seconds: 2), () {
                    setState(() {
                      isFinish = true;
                    });
                  });
                },
                onFinish: () async {
                  await Navigator.push(context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: MyHomePage())
                  );

                  //TODO: For reverse ripple effect animation
                  setState(() {
                    isFinish = false;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
