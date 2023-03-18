import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final int index;

  const CustomContainer({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildContainer(
            index == 0 ? Colors.white : Colors.grey, index == 0 ? 20 : 5),
        buildContainer(
            index == 1 ? Colors.white : Colors.grey, index == 1 ? 20 : 5),
        buildContainer(
            index == 2 ? Colors.white : Colors.grey, index == 2 ? 20 : 5),
      ],
    );
  }

  buildContainer(Color color, double width) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      width: width,
      height: 5,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(100)),
    );
  }
}
