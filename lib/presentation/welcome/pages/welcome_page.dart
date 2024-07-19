import 'package:animate_do/animate_do.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:neumorphic_tesla/constants/app_constants.dart';
import 'package:neumorphic_tesla/presentation/welcome/widgets/home_buttom.dart';
import 'package:neumorphic_tesla/presentation/welcome/widgets/home_center_body.dart';
import 'package:neumorphic_tesla/presentation/welcome/widgets/lock_center_body.dart';
import 'package:neumorphic_tesla/widgets/neumorphic_button.dart';
import 'package:neumorphic_tesla/widgets/appbar_action.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool isLocked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        color: AppColors.appBarBackgroundColor,
        title: isLocked ? FadeInDown(child: titleAppBar(context)) : null,
        actions: [
          if (!isLocked) ...{
            const AppBarAction(path: 'assets/images/setting.png'),
          } else ...{
            const AppBarAction(path: 'assets/images/person.png'),
          }
        ],
        leading: isLocked
            ? const AppBarAction(path: 'assets/images/menu.png')
            : null,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.appBarBackgroundColor,
              Color(0xff0D0B0D),
            ],
          ),
        ),
        child: ListView(
          children: [
            if (!isLocked) ...{
              topLock(context),
            } else ...{
              carFront(),
            },
            const SizedBox(height: 20),
            if (!isLocked) ...{
              const LockCenterBody(),
            } else ...{
              const HomeCenterBody(),
            },
            const SizedBox(height: 30),
            if (!isLocked) ...{
              lockButtom(context),
            } else ...{
              const HomeButtom()
            }
          ],
        ),
      ),
    );
  }

  Widget lockButtom(BuildContext context) {
    return FadeInUpBig(
      child: Column(
        children: [
          Text(
            'A/C is turned on',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 90,
            child: CustomNeumorphicButton(
              path: 'assets/images/lock.png',
              onPressed: () {
                setState(() {
                  isLocked = !isLocked;
                });
              },
              borerWidth: 2,
              scale: 0.9,
              color: AppColors.neumorphicBackgroundColorbtnBlue,
              borderColor: AppColors.neumorphicBorderColorBtnBlue,
            ),
          )
        ],
      ),
    );
  }

  Widget carFront() {
    return FadeInRightBig(
      delay: const Duration(milliseconds: 700),
      child: Image.asset('assets/images/car-front.png'),
    );
  }

  Widget topLock(BuildContext context) {
    return FadeInDownBig(
      delay: const Duration(milliseconds: 700),
      child: Column(
        children: [
          Text(
            'Tesla',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            'Cybertruck',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }

  Column titleAppBar(BuildContext context) {
    return Column(
      children: [
        Text(
          'Tesla',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        Text(
          'Cybertruck',
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
