import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';
import '../../controller/tasbeeh_controller.dart';
import 'progress_circle.dart';

class CounterSection extends StatelessWidget {
  final TasbeehController controller;
  final VoidCallback refresh;

  const CounterSection({
    super.key,
    required this.controller,
    required this.refresh,
  });

  @override
  Widget build(BuildContext context) {
    final mainColor = Color(controller.color);

    return Column(
      children: [
        const SizedBox(height: 20),
        Text(
          AppStrings.dhikrName,
          style: TextStyle(color: mainColor, fontSize: 22),
        ),
        Text(
          "${controller.counter}",
          style: TextStyle(color: mainColor, fontSize: 22),
        ),
        const SizedBox(height: 20),
        ProgressCircle(controller: controller, refresh: refresh),
        const SizedBox(height: 20),
        Text(
          "${AppStrings.repeatCount} : ${controller.time}",
          style: TextStyle(color: mainColor, fontSize: 20),
        ),
        Text(
          "${AppStrings.total} : ${controller.time * controller.goal + controller.counter}",
          style: TextStyle(color: mainColor, fontSize: 20),
        ),
      ],
    );
  }
}
