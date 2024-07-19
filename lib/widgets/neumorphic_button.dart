import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:neumorphic_tesla/constants/app_constants.dart';

class CustomNeumorphicButton extends StatelessWidget {
  const CustomNeumorphicButton({
    super.key,
    required this.path,
    required this.onPressed,
    required this.color,
    required this.borderColor,
    required this.borerWidth,
    required this.scale,
    this.depth = 15,
  });

  final String path;
  final VoidCallback onPressed;
  final Color color;
  final Color borderColor;
  final double borerWidth;
  final double scale;
  final double? depth;

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      duration: const Duration(milliseconds: 300),
      onPressed: onPressed,
      curve: Curves.linear,
      minDistance: 0,
      padding: const EdgeInsets.all(8.0),
      style: NeumorphicStyle(
        intensity: 0.8,
        shadowDarkColorEmboss: AppColors.neumorphicShadowDarkColorEmboss,
        shadowLightColor: AppColors.neumorphicShadowLightColor,
        surfaceIntensity: 0.1,
        border: NeumorphicBorder(
          isEnabled: true,
          color: borderColor,
          width: borerWidth,
        ),
        shape: NeumorphicShape.convex,
        boxShape: const NeumorphicBoxShape.circle(),
        depth: depth,
        disableDepth: false,
        shadowDarkColor: AppColors.neumorphicShadowDarkColor,
        color: color,
      ),
      child: Transform.scale(
        scale: scale,
        child: Image.asset(path),
      ),
    );
  }
}
