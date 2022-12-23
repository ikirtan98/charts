
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({super.key});

  @override
  Widget build(BuildContext context) {

    const List<String> indicatorData = [
      'Cash',
      'Card',
      'Paytm',
      'Phonepe',
      'Lending',
      'Petty Cash',
    ];

    const List<Color> indicatorColor = [
      Colors.red,
      Colors.yellow,
      Colors.blue,
      Colors.brown,
      Colors.green,
      Colors.purple,
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(5, (index) => Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              height: 15,
              width: 20,
              color: indicatorColor[index],
            ),
            Text(indicatorData[index]),
          ],
        ),),
      ],
    );
  }
}