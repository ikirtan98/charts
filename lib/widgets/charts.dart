/// Package import
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'sample_view.dart';


/// Render the pie series with various radius datapoints.
class PieRadius extends SampleView {
  const PieRadius({super.key});


  @override
  _PieRadiusState createState() => _PieRadiusState();
}

/// State class of pie series with various radius.
class _PieRadiusState extends SampleViewState {
  _PieRadiusState();

  @override
  Widget build(BuildContext context) {
    return _buildRadiusPieChart();
  }

  /// Returns the circular charts with pie series.
  SfCircularChart _buildRadiusPieChart() {
    return SfCircularChart(
      title: ChartTitle(
          text: isCardView
              ? ''
              : 'Various countries population density and area'),
      legend: Legend(
          isVisible: !isCardView, overflowMode: LegendItemOverflowMode.wrap),
      series: _getRadiusPieSeries(),
      onTooltipRender: (TooltipArgs args) {
        final NumberFormat format = NumberFormat.decimalPattern();
        args.text = args.dataPoints![args.pointIndex!.toInt()].x.toString() +
            ' : ' +
            format.format(args.dataPoints![args.pointIndex!.toInt()].y);
      },
      tooltipBehavior: TooltipBehavior(enable: true),
    );
  }

  /// Returns the pie series.
  List<PieSeries<ChartSampleData, String>> _getRadiusPieSeries() {
    return <PieSeries<ChartSampleData, String>>[
      PieSeries<ChartSampleData, String>(
        dataSource: <ChartSampleData>[
          ChartSampleData(x: 'Cash', y: 40, text: '60%'),
          ChartSampleData(x: 'Card', y: 26, text: '53.7%'),
          ChartSampleData(x: 'Paytm', y: 23, text: '59.6%'),
          ChartSampleData(x: 'Phonepe', y: 12, text: '72.5%'),
          ChartSampleData(x: 'Lending', y: 18, text: '85.8%'),
          ChartSampleData(x: 'Petty Cash', y: 15, text: '90.5%'),
        ],
        xValueMapper: (ChartSampleData data, _) => data.x as String,
        yValueMapper: (ChartSampleData data, _) => data.y,
        dataLabelMapper: (ChartSampleData data, _) => data.x as String,
        startAngle: 30,
        endAngle: 30,
        pointRadiusMapper: (ChartSampleData data, _) => data.text,
        dataLabelSettings: const DataLabelSettings(
          isVisible: true,
          labelPosition: ChartDataLabelPosition.outside,
        ),
      )
    ];
  }
}
