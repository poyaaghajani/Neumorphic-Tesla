import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:neumorphic_tesla/constants/app_constants.dart';

class DetailIndicatior extends StatelessWidget {
  const DetailIndicatior({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: 40,
        height: 4,
        decoration: ShapeDecoration(
          color: AppColors.neumorphicBorderColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
