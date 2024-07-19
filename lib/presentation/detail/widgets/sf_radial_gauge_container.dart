import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:neumorphic_tesla/constants/app_constants.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SfRadialGaugeContainer extends StatelessWidget {
  const SfRadialGaugeContainer({
    super.key,
    required this.onValueChanged,
    required this.value,
  });

  final void Function(double)? onValueChanged;
  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: NeumorphicButton(
        style: const NeumorphicStyle(
          intensity: 0.2,
          shadowDarkColorEmboss: AppColors.neumorphicShadowDarkColorEmboss,
          shadowLightColor: AppColors.neumorphicShadowLightColor,
          surfaceIntensity: 0.1,
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.neumorphicBorderColor,
            width: 0.2,
          ),
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.circle(),
          depth: 20,
          disableDepth: false,
          shadowDarkColor: AppColors.neumorphicShadowDarkColor,
          color: AppColors.neumorphicBackgroundColor,
        ),
        child: Stack(
          children: [
            SfRadialGauge(
              animationDuration: 2000,
              enableLoadingAnimation: true,
              axes: <RadialAxis>[
                RadialAxis(
                  showTicks: true,
                  showFirstLabel: false,
                  showLastLabel: false,
                  showLabels: false,
                  radiusFactor: 0.9,
                  majorTickStyle: const MajorTickStyle(
                    length: 0,
                    color: AppColors.neumorphicShadowDarkColorEmboss,
                  ),
                  ticksPosition: ElementsPosition.outside,
                  pointers: <GaugePointer>[
                    RangePointer(
                      cornerStyle: CornerStyle.bothCurve,
                      width: 0.2,
                      enableAnimation: true,
                      sizeUnit: GaugeSizeUnit.factor,
                      value: value,
                      gradient: const SweepGradient(
                        colors: [
                          Color(0xFF0172BE),
                          Color(0xFF0F9BEE),
                        ],
                      ),
                      enableDragging: true,
                      onValueChanged: onValueChanged,
                      animationDuration: 1500,
                    ),
                  ],
                  axisLineStyle: const AxisLineStyle(
                    thickness: 0.2,
                    cornerStyle: CornerStyle.bothCurve,
                    gradient: SweepGradient(
                      colors: [
                        Color(0xFF202428),
                        Colors.black,
                      ],
                    ),
                    thicknessUnit: GaugeSizeUnit.factor,
                  ),
                )
              ],
            ),
            Positioned(
              top: 130,
              left: 215,
              child: Container(
                width: 10,
                height: 10,
                decoration: const ShapeDecoration(
                  shape: OvalBorder(
                    side: BorderSide(
                        width: 3, color: TextColors.textBodySmallColor),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 130,
              left: 160,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        value.toStringAsFixed(0),
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'C',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Cooling...',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
