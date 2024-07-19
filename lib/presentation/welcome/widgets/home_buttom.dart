import 'package:animate_do/animate_do.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:neumorphic_tesla/constants/app_constants.dart';
import 'package:neumorphic_tesla/presentation/detail/pages/detail_page.dart';
import 'package:neumorphic_tesla/presentation/welcome/pages/welcome_page.dart';
import 'package:neumorphic_tesla/widgets/neumorphic_button.dart';
import 'package:page_transition/page_transition.dart';

class HomeButtom extends StatelessWidget {
  const HomeButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [
              Color(0xFF353A40),
              Color(0xFF15161A),
            ],
          ),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          border: Border.all(
            strokeAlign: BorderSide.strokeAlignOutside,
            color: AppColors.neumorphicShadowDarkColorEmboss,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'A/C is ON',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    'Tap to turn off or swipe up\for a fast setup',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 75,
              child: CustomNeumorphicButton(
                path: 'assets/images/power.png',
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      duration: const Duration(milliseconds: 400),
                      type: PageTransitionType.bottomToTopPop,
                      child: const DetailPage(),
                      childCurrent: const WelcomePage(),
                      isIos: true,
                    ),
                  );
                },
                borerWidth: 2,
                scale: 0.3,
                color: AppColors.neumorphicBackgroundColorbtnBlue,
                borderColor: AppColors.neumorphicBorderColorBtnBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
