import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';

class DonemselMaasGrafigiWidget extends StatelessWidget {
  const DonemselMaasGrafigiWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeCon.chart,
      child: LineChart(
        LineChartData(
          gridData: const FlGridData(show: false),
          minX: 0,
          maxX: 2,
          minY: 0,
          maxY: 35000,
          lineBarsData: [
            LineChartBarData(
              belowBarData: BarAreaData(show: true, gradient: ColorCon.chart),
              barWidth: 6,
              spots: [
                const FlSpot(0, 3000),
                const FlSpot(1, 7000),
                const FlSpot(2, 31000),
              ],
            ),
          ],
          titlesData: FlTitlesData(
              topTitles:
                  const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles:
                  const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 1,
                  getTitlesWidget: (value, meta) {
                    final titles = ['Tem - 22', 'Tem - 23', 'Haz - 24'];
                    return Text(titles[value.toInt()],
                        style: const TextStyle(fontSize: 12));
                  },
                ),
              ),
              leftTitles: const AxisTitles(
                  axisNameWidget: Text("Tutar"),
                  sideTitles: SideTitles(showTitles: true, reservedSize: 50))),
        ),
      ),
    );
  }
}
