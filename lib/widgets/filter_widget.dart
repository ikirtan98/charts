import 'package:flutter/material.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> filterdata = [
      'Daily',
      'Weekly',
      'Monthly',
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(
          3,
          (index) => Container(
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: index == 0 ? Colors.red : Colors.white,
                border: Border.all(
                  color: index != 0 ? Colors.black : Colors.transparent,
                )),
            width: 100,
            child: Center(
              child: Text(
                filterdata[index],
                style:  TextStyle(
                  fontSize: 15,
                  color: index == 0 ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
