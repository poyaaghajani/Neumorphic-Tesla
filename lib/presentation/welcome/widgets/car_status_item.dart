import 'package:animate_do/animate_do.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class CarStatusItem extends StatelessWidget {
  const CarStatusItem({
    super.key,
    required this.path,
    required this.title,
    required this.subtitle,
    this.imageWidth = 8,
  });

  final String path;
  final String title;
  final String subtitle;
  final double? imageWidth;

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(path, width: imageWidth ?? 8),
              const SizedBox(width: 5),
              Text(
                title,
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.titleSmall,
          )
        ],
      ),
    );
  }
}
