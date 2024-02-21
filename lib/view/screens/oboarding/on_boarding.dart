import 'package:flutter/material.dart';
import 'package:product/view/screens/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'builder_onboarding.dart';
import 'onboardingModel.dart';

class OnBoarding extends StatefulWidget {
  OnBoarding({super.key,});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
 var pageController =PageController();
  bool isLast = false;
  void finishOnBoarding(Widget screenName) {
    // Navigator.pushNamedAndRemoveUntil(context, screenName, (route) => false);
    Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(builder: (_) => screenName), (
        route) => false);
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
          actions: [
            TextButton(
              onPressed: (){
                finishOnBoarding(LoginPage());
              },
              child: const Text("Skip",
                style: TextStyle(color: Colors.teal,fontSize: 20),),
            )
          ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: 250,
              child: PageView.builder(
                controller:pageController ,
                itemBuilder: (BuildContext context, int index) {
                  return BuilderOnBoarding(
                    onboarding: onBoardList[index],);
                  },
                itemCount: onBoardList.length,
                onPageChanged: (int index){
                  if(index== onBoardList.length-1){
                    setState(() {
                      isLast = true;
                    });
                  }
                   else{
                     setState(() {
                       isLast =false;
                     });
                  }
                },
              ),
            ),
            SmoothPageIndicator(
              controller: pageController,
              count:  onBoardList.length,
              axisDirection: Axis.horizontal,
              effect:  SlideEffect(
                  spacing:  8.0,
                  radius:  4.0,
                  dotWidth:  24.0,
                  dotHeight:  16.0,
                  paintStyle:  PaintingStyle.stroke,
                  strokeWidth:  1.5,
                  dotColor:  Colors.grey,
                  activeDotColor:  Colors.indigo
              ),
            ),

            ElevatedButton(onPressed: (){}, child: Text("Next"))

          ],
        ),
      ) ,
    );
  }
}
