import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:neumorphic_tesla/constants/app_constants.dart';

class FanSpeed extends StatelessWidget {
  const FanSpeed({
    super.key,
    required this.onChangeStart,
    required this.onChanged,
    required this.value,
  });

  final void Function(double)? onChangeStart;
  final void Function(double)? onChanged;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Fan speed'),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: NeumorphicSlider(
            thumb: Container(
              width: 28,
              height: 28,
              decoration: const ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.63, 0.77),
                  end: Alignment(0.63, -0.77),
                  colors: [Color(0xFF141415), Color(0xFF2E3236)],
                ),
                shape: OvalBorder(
                  side: BorderSide(width: 1, color: Color(0xFF282B2E)),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x59000000),
                    blurRadius: 20,
                    offset: Offset(4, 6),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
            height: 10,
            style: const SliderStyle(
              accent: Color(0xFF0172BE),
              depth: 1,
              border: NeumorphicBorder(
                color: AppColors.neumorphicBorderColor,
                width: 2,
              ),
            ),
            value: value,
            onChangeStart: onChangeStart,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
