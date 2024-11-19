import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:stocksapp/utilities/color_manager.dart';

class LineChartWidget extends StatefulWidget {
  const LineChartWidget({super.key});

  @override
  State<LineChartWidget> createState() => _LineChartWidgetState();
}

class _LineChartWidgetState extends State<LineChartWidget> {
  @override
  Widget build(BuildContext context) {
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
    var style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: ColorManager.secondaryText,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = Text('SEP 8', style: style);
        break;
      // case 5:
      //   text = Text('JUN', style: style);
      //   break;
      case 8:
        text = Text('OCT 8', style: style);
        break;
      default:
        text = Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    var style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: ColorManager.secondaryText,
    );
    String text;
    switch (value.toInt()) {
      // case 1:
      //   text = '\$0';
      //   break;
      case 3:
        text = '\$900';
        break;
      case 5:
        text = '\$1200';
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
        horizontalInterval: 1.5, // 1
        drawVerticalLine: false,
        // verticalInterval: 0.5,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: ColorManager.inactiveColor,
            strokeWidth: 1,
            dashArray: [7],
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
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
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 45,
          ),
        ),
      ),
      minX: 2,
      maxX: 10,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 0.7),
            FlSpot(2, 2),
            FlSpot(3, 3),
            FlSpot(4, 2.5),
            FlSpot(5, 3),
            FlSpot(5.5, 2.5),
            FlSpot(6, 3.5),
            FlSpot(6.5, 3.5),
            FlSpot(7, 4),
            FlSpot(7.5, 5),
            FlSpot(8, 4.5),
            FlSpot(9, 4.5),
            FlSpot(9.5, 4),
            FlSpot(11, 6),
          ],
          isCurved: true,
          gradient: LinearGradient(colors: [
            ColorManager.positiveValue,
            ColorManager.positiveValue,
          ]),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(colors: [
              ColorManager.positiveValue.withOpacity(0.1),
              ColorManager.positiveValue.withOpacity(0.5),
            ]),
          ),
        ),
      ],
    );
  }
}
