import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../core/widget/custom_fitness_buttton.dart';
class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 0.8, keepPage: true);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox.expand(
              child: Image.asset(
                'assets/images/On 1.png', 
                fit: BoxFit.cover,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 40, horizontal: 17),
                  child: Positioned(
                    top: 20,
                    child: Text("Skip", style: TextStyle(
                      color: Colors.white,
                    ),)
                  ),
                ),
              ],
            ),
           const Positioned(
              bottom: 210,
              left: 0,
              right: 0,
              child: Image(image: AssetImage("assets/images/O15_31 (1).png")),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    height: 275,
                    width: 375,
                    color: Colors.black.withOpacity(0.3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 31),
                          child: Text(
                            "the price of excellenc\nis discipline",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Lorem ipsum dolor sit amet consectetur. Eu urna ut gravida quis id pretium purus. Mauris massa",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        SmoothPageIndicator(
                          count: 3,
                          controller: controller,
                          effect: const ExpandingDotsEffect(
                            activeDotColor: Color(0xFFFF4100)
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: CustomElevatedButton(
                            onPressed: () {  },
                             buttonTitle: 'Next',
                          ),
                        )
                      ],
                    )
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
