import 'package:crypto_1/Screen/login.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

void main() {
  runApp(_ChartApp());
}

class _ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: const HomeScreen(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  _MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  final monthctrl = TextEditingController();
  final numbercrtl = TextEditingController();
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter chart'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SfCartesianChart(
              primaryXAxis: const CategoryAxis(),
              title: const ChartTitle(text: 'Half yearly sales analysis'),
              legend: const Legend(isVisible: true),
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <CartesianSeries<_SalesData, String>>[
                LineSeries<_SalesData, String>(
                  dataSource: data,
                  xValueMapper: (_SalesData sales, _) => sales.year,
                  yValueMapper: (_SalesData sales, _) => sales.sales,
                  name: 'Sales',
                  dataLabelSettings: const DataLabelSettings(isVisible: true),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SfSparkLineChart.custom(
                  trackball: const SparkChartTrackball(
                      activationMode: SparkChartActivationMode.tap),
                  marker: const SparkChartMarker(
                      displayMode: SparkChartMarkerDisplayMode.all),
                  labelDisplayMode: SparkChartLabelDisplayMode.all,
                  xValueMapper: (int index) => data[index].year,
                  yValueMapper: (int index) => data[index].sales,
                  dataCount: 5,
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Add new expense"),
                      content: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              controller: monthctrl,
                              decoration: const InputDecoration(
                                hintText: "Month",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 10,),
                            TextFormField(
                              controller: numbercrtl,
                              decoration: const InputDecoration(
                                hintText: "Sales",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              data.add(_SalesData(monthctrl.text, double.parse(numbercrtl.text)));
                              monthctrl.clear();
                              numbercrtl.clear();
                            });
                            Navigator.of(context).pop();
                          },
                          child: const Text("Add"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("Cancel"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
