// ignore_for_file: must_be_immutable

import 'package:animate_do/animate_do.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:neumorphic_tesla/constants/app_constants.dart';
import 'package:neumorphic_tesla/widgets/neumorphic_button.dart';

class DetailModes extends StatefulWidget {
  const DetailModes({super.key});

  @override
  State<DetailModes> createState() => _DetailModesState();
}

int _selectedMode = 0;

class _DetailModesState extends State<DetailModes> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Mode'),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            4,
            (index) {
              bool isSelected = _selectedMode == index;

              return Mode(
                isSelected: isSelected,
                text: AppConstants.carModes.keys.toList()[index],
                path: AppConstants.carModes.values.toList()[index],
                onPressed: () {
                  setState(() {
                    _selectedMode = index;
                  });
                },
              );
            },
          ),
          //   [
          //     FadeInUp(
          //       child: Column(
          //         children: [
          //           Text(
          //             'Dry',
          //             style: Theme.of(context).textTheme.displaySmall,
          //           ),
          //           const SizedBox(
          //             height: 5,
          //           ),
          //           SizedBox(
          //             width: 65,
          //             child: CustomNeumorphicButton(
          //               depth: 0,
          //               path: 'assets/images/dry.png',
          //               onPressed: () {},
          //               borerWidth: 2,
          //               scale: 0.3,
          //               color: AppColors.neumorphicBackgroundColor,
          //               borderColor: AppColors.neumorphicBorderColor,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //     FadeInUp(
          //       child: Column(
          //         children: [
          //           Text(
          //             'Cool',
          //             style: Theme.of(context).textTheme.displaySmall,
          //           ),
          //           const SizedBox(
          //             height: 5,
          //           ),
          //           SizedBox(
          //             width: 65,
          //             child: CustomNeumorphicButton(
          //               depth: 0,
          //               path: 'assets/images/cool.png',
          //               onPressed: () {},
          //               borerWidth: 2,
          //               scale: 0.3,
          //               color: AppColors.neumorphicBackgroundColor,
          //               borderColor: AppColors.neumorphicBorderColor,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //     FadeInUp(
          //       child: Column(
          //         children: [
          //           Text(
          //             'Program',
          //             style: Theme.of(context).textTheme.displaySmall,
          //           ),
          //           const SizedBox(
          //             height: 5,
          //           ),
          //           SizedBox(
          //             width: 65,
          //             child: CustomNeumorphicButton(
          //               depth: 0,
          //               path: 'assets/images/program.png',
          //               onPressed: () {},
          //               borerWidth: 2,
          //               scale: 0.3,
          //               color: AppColors.neumorphicBackgroundColor,
          //               borderColor: AppColors.neumorphicBorderColor,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
        ),
      ],
    );
  }
}

class Mode extends StatelessWidget {
  const Mode({
    super.key,
    required this.text,
    required this.path,
    required this.onPressed,
    required this.isSelected,
  });

  final String text;
  final String path;
  final void Function() onPressed;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Column(
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 65,
            child: CustomNeumorphicButton(
              depth: 0,
              path: path,
              onPressed: onPressed,
              borerWidth: 2,
              scale: text == 'Auto' ? 1 : 0.4,
              color: isSelected
                  ? AppColors.neumorphicBackgroundColorbtnBlue
                  : AppColors.neumorphicBackgroundColor,
              borderColor: isSelected
                  ? AppColors.neumorphicBorderColorBtnBlue
                  : AppColors.neumorphicBorderColor,
            ),
          ),
        ],
      ),
    );
  }
}
