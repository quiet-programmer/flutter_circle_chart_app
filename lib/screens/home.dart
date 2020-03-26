import 'package:charts_app/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<String, double> dataMap = {
    "Flutter": 45.0,
    "React Native": 35.0,
    "Android": 25.0,
    "iOS": 15.0,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Charts"),
      ),
      body: Center(
        child: PieChart(
          dataMap: dataMap,
          animationDuration: Duration(milliseconds: 800),
          chartLegendSpacing: 32.0,
          chartRadius: MediaQuery.of(context).size.width / 2.7,
          showChartValuesInPercentage: true,
          showChartValues: true,
          showChartValuesOutside: false,
          chartValueBackgroundColor: Colors.grey[200],
          showLegends: true,
          legendPosition: LegendPosition.right,
          decimalPlaces: 1,
          showChartValueLabel: true,
          initialAngle: 0,
          chartValueStyle: defaultChartValueStyle.copyWith(
            color: Colors.blueGrey[900].withOpacity(0.9),
          ),
          chartType: ChartType.disc,
        ),
      ),
    );
  }
}
