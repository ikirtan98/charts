import 'package:charts_demo/widgets/charts.dart';
import 'package:flutter/material.dart';

import 'widgets/filter_widget.dart';
import 'widgets/payment_indicator.dart';
import 'widgets/payment_type_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Sale Report'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const  EdgeInsets.fromLTRB(10, 20, 10, 10),
        children:    [
           const FilterWidget(),
           const SizedBox(height: 20),
            Container(
              padding: const  EdgeInsets.all(20),
              decoration:const  BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 1.0
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Mode of Payment', style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                   SizedBox(height: 20),
                   PaymentList(),
                   SizedBox(height: 20),
                  PieRadius(),
                  Indicator(),
                ],
              ),
            ),
            
           
        ],
      ),
    );
  }
}