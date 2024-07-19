import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:neumorphic_tesla/constants/app_constants.dart';
import 'package:neumorphic_tesla/widgets/neumorphic_button.dart';

class DetailAcButton extends StatelessWidget {
  const DetailAcButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
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
            onPressed: () {},
            borerWidth: 2,
            scale: 0.3,
            color: AppColors.neumorphicBackgroundColorbtnBlue,
            borderColor: AppColors.neumorphicBorderColorBtnBlue,
          ),
        ),
      ],
    );
  }
}
