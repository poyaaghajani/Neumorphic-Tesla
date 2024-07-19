import 'package:animate_do/animate_do.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:neumorphic_tesla/constants/app_constants.dart';
import 'package:neumorphic_tesla/presentation/detail/widgets/ac_button.dart';
import 'package:neumorphic_tesla/presentation/detail/widgets/fan_speed.dart';
import 'package:neumorphic_tesla/presentation/detail/widgets/indicator.dart';
import 'package:neumorphic_tesla/presentation/detail/widgets/modes.dart';
import 'package:neumorphic_tesla/presentation/detail/widgets/sf_radial_gauge_container.dart';
import 'package:neumorphic_tesla/widgets/appbar_action.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

double _gaugeValue = 40;
double _sliderValue = 10;

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        color: AppColors.appBarBackgroundColor,
        title: FadeInDown(child: titleAppBar(context)),
        actions: const [
          AppBarAction(path: 'assets/images/person.png'),
        ],
        leading: const AppBarAction(path: 'assets/images/menu.png'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF2F353A),
              Color(0xff0D0B0D),
            ],
          ),
        ),
        child: FadeInUp(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF2F353A),
                  Color(0xff0D0B0D),
                ],
              ),
              border: Border.all(
                width: 1,
                color: AppColors.neumorphicShadowDarkColorEmboss,
              ),
            ),
            child: ListView(
              children: [
                const DetailIndicatior(),
                const DetailAcButton(),
                SfRadialGaugeContainer(
                  value: _gaugeValue,
                  onValueChanged: (value) {
                    setState(() {
                      _gaugeValue = value;
                    });
                  },
                ),
                const SizedBox(height: 20),
                FanSpeed(
                  value: _sliderValue,
                  onChangeStart: (percent) {
                    setState(() {
                      _sliderValue = percent;
                    });
                  },
                  onChanged: (percent) {
                    setState(() {
                      _sliderValue = percent;
                    });
                  },
                ),
                const SizedBox(height: 20),
                const DetailModes(),
              ],
            ),
          ),
        ),
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
