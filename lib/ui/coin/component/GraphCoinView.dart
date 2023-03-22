import 'package:coin_wallet/common/cons/ResColor.dart';
import 'package:coin_wallet/util/atom/ChipFilter.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GraphCoinView extends StatefulWidget {
  const GraphCoinView({Key? key}) : super(key: key);

  @override
  State<GraphCoinView> createState() => _GraphCoinViewState();
}

class _GraphCoinViewState extends State<GraphCoinView> {

  List<Color> gradientColors = [
    ResColor.GREY,
    ResColor.BLACK,
  ];

  List<Color> gradientColorsLine = [
    ResColor.GREY,
    ResColor.BLACK,
    ResColor.GREY,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
            //set border radius more than 50% of height and width to make circle
          ),
        child: Column(
          children: [
            SizedBox(height: 16,),
              FilterDay(),
            showChart(),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }

  Widget FilterDay(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ChipFilter(title : "24h", isSelected: false),
        ChipFilter(title : "7d", isSelected: true),
        ChipFilter(title : "1m", isSelected: false),
        ChipFilter(title : "1y", isSelected: false),
        ChipFilter(title : "All", isSelected: false),
      ],
    );
  }

  //region [GRAPH]

  Widget showChart(){
    return AspectRatio(
      aspectRatio: 1.70,
      child: Padding(
        padding: const EdgeInsets.only(
          right: 18,
          left: 12,
          top: 24,
          bottom: 12,
        ),
        child: LineChart(
          mainData(),
        ),
      ),
    );
  }
  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      color: ResColor.BLACK,
      fontSize: 14,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('11 Apr', style: style);
        break;
      case 4:
        text = const Text('12 Apr', style: style);
        break;
      case 7:
        text = const Text('13 Apr', style: style);
        break;
      case 10:
        text = const Text('14 Apr', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '10K';
        break;
      case 3:
        text = '30k';
        break;
      case 5:
        text = '50k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }



  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: ResColor.WHITE,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: ResColor.WHITE,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            interval: 1,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: Colors.transparent),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColorsLine,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.1))
                  .toList(),
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
      ],
    );
  }

//endregion
}
