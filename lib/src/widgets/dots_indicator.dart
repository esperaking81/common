import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DotsIndicator extends StatelessWidget {
  final int length;
  final int current;
  const DotsIndicator({
    super.key,
    required this.length,
    required this.current,
  });

  bool isActive(int index) => current == index;

  bool isIndexBetweenStartAndEnd(int index) => index < length - 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        length,
        (index) => Container(
          height: Vx.dp10,
          width: Vx.dp10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive(index)
                ? Vx.hexToColor('#0D3659')
                : Vx.hexToColor('#D2D4D9'),
          ),
        ).pOnly(right: isIndexBetweenStartAndEnd(index) ? Vx.dp8 : Vx.dp0),
      ).toList(growable: false),
    );
  }
}
