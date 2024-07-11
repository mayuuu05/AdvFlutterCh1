import 'package:advflutter_ch1/Screen/1.6/view/homePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/onBoardingProvider.dart';

class Introscreen1 extends StatelessWidget {
  const Introscreen1({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    PageController _pageController = PageController();
    OnboardingProvider onboardingProviderTrue = Provider.of<OnboardingProvider>(context, listen: true);
    OnboardingProvider onboardingProviderFalse = Provider.of<OnboardingProvider>(context, listen: false);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                context.read<OnboardingProvider>().setCurrentPage(page);
              },
              children: [
                introPage(height, width, 'assets/images/intro1.png', 'Community', 'Get to know your coworkers'),
                introPage(height, width, 'assets/images/intro2.png', 'Stay in Touch', 'Reach out to anyone at anytime'),
                introPage(height, width, 'assets/images/intro3.png', 'Personal Desk Space', "We don't believe in cubicles"),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildIndicator(context.watch<OnboardingProvider>().currentPage == 0, height, width),
              buildIndicator(context.watch<OnboardingProvider>().currentPage == 1, height, width),
              buildIndicator(context.watch<OnboardingProvider>().currentPage == 2, height, width),
            ],
          ),
          SizedBox(height: height / 12),
          Padding(
            padding: EdgeInsets.all(width / 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    onboardingProviderFalse.setHomeStatus(true);
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
                context.watch<OnboardingProvider>().currentPage == 2
                    ? ElevatedButton(
                  onPressed: () {
                    onboardingProviderFalse.setHomeStatus(true);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: width / 20, vertical: height / 50),
                  ),
                  child: Text(
                    'Get started',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
                    : GestureDetector(
                  onTap: () {
                    if (context.read<OnboardingProvider>().currentPage < 2) {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Container(
                    height: height / 20,
                    width: width / 7,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildIndicator(bool isActive, double height, double width) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width / 90),
      height: height / 90,
      width: isActive ? width / 30 : width / 50,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.black26,
        shape: BoxShape.circle,
      ),
    );
  }

  Column introPage(double height, double width, String img, String title, String subTitle) {
    return Column(
      children: [
        SizedBox(
          height: height / 10,
        ),
        Image.asset(
          img,
        ),
        SizedBox(
          height: height / 10,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          height: height / 50,
        ),
        Text(
          subTitle,
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: height / 10,
        ),
      ],
    );
  }
}
