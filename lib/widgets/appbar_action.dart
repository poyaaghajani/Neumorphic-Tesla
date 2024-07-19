import 'package:animate_do/animate_do.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:neumorphic_tesla/constants/app_constants.dart';
import 'package:neumorphic_tesla/widgets/neumorphic_button.dart';

class AppBarAction extends StatelessWidget {
  const AppBarAction({
    super.key,
    required this.path,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.linear,
      duration: const Duration(seconds: 3),
      child: FadeInDown(
        child: CustomNeumorphicButton(
          path: path,
          onPressed: () {},
          borerWidth: 0.6,
          scale: 0.5,
          color: AppColors.neumorphicBackgroundColor,
          borderColor: AppColors.neumorphicBorderColor,
        ),
      ),
    );
  }
}
