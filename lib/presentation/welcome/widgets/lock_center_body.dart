import 'package:animate_do/animate_do.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class LockCenterBody extends StatelessWidget {
  const LockCenterBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        SizedBox(
          height: 450,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          top: 0,
          right: 80,
          child: FadeInLeftBig(
            delay: const Duration(milliseconds: 700),
            child: Text(
              '297',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        ),
        Positioned(
          right: 40,
          top: 30,
          child: FadeInRightBig(
            delay: const Duration(milliseconds: 700),
            child: Text(
              'km',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
        ),
        Positioned(
          child: FadeInRightBig(
            delay: const Duration(milliseconds: 700),
            child: Image.asset(
              'assets/images/cybertruck-mod-black2 1.png',
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
