import 'package:animate_do/animate_do.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:neumorphic_tesla/presentation/welcome/widgets/car_status_item.dart';
import 'package:neumorphic_tesla/presentation/welcome/widgets/car_slider_card.dart';

class HomeCenterBody extends StatelessWidget {
  const HomeCenterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: Text(
              'Status',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 15),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CarStatusItem(
                path: 'assets/images/battery.png',
                title: 'Battery',
                subtitle: '54%',
              ),
              CarStatusItem(
                path: 'assets/images/range.png',
                title: 'Range',
                subtitle: '297 km',
                imageWidth: 12,
              ),
              CarStatusItem(
                path: 'assets/images/tempreture.png',
                title: 'Tempreture',
                subtitle: '38°C',
              ),
            ],
          ),
          const SizedBox(height: 30),
          FadeInLeft(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Text(
                'Information',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: FadeIn(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                scrollDirection: Axis.horizontal,
                children: [
                  CarSliderCard(
                      onPressed: () {},
                      borderRaduis: 5,
                      info: 'Engine',
                      subtitle: 'Sleeping mode',
                      borerWidth: 1),
                  const SizedBox(
                    width: 20,
                  ),
                  CarSliderCard(
                      onPressed: () {},
                      borderRaduis: 5,
                      info: 'Climate',
                      subtitle: 'A/C is ON',
                      borerWidth: 1),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
