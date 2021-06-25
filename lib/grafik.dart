import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'indicator.dart';

class GrafikPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GrafikPageState();
}

class GrafikPageState extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text(
            'Marka Satış Grafiği',
            style: TextStyle(fontSize: 20, fontFamily: 'KronaOne'),
          ),
        ),
        body: SafeArea(
          child: AspectRatio(
            aspectRatio: 1.3,
            child: Card(
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: Scaffold(
                      backgroundColor: Colors.white,
                      body: AspectRatio(
                        aspectRatio: 1,
                        child: PieChart(
                          PieChartData(
                              pieTouchData: PieTouchData(
                                  touchCallback: (pieTouchResponse) {
                                setState(() {
                                  final desiredTouch = pieTouchResponse
                                          .touchInput is! PointerExitEvent &&
                                      pieTouchResponse.touchInput
                                          is! PointerUpEvent;
                                  if (desiredTouch &&
                                      pieTouchResponse.touchedSection !=
                                          null) {
                                    touchedIndex = pieTouchResponse
                                        .touchedSection.touchedSectionIndex;
                                  } else {
                                    touchedIndex = -1;
                                  }
                                });
                              }),
                              borderData: FlBorderData(
                                show: false,
                              ),
                              sectionsSpace: 0,
                              centerSpaceRadius: 40,
                              sections: showingSections()),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Indicator(
                        color: Color(0xff0293ee),
                        text: 'BMW',
                        isSquare: true,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Indicator(
                        color: Color(0xfff8b250),
                        text: 'Dodge',
                        isSquare: true,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Indicator(
                        color: Color(0xff845bef),
                        text: 'Ferrari',
                        isSquare: true,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Indicator(
                        color: Color(0xff13d38e),
                        text: 'Mercedes',
                        isSquare: true,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Indicator(
                        color: Color(0xff6d4c41),
                        text: 'Nissan',
                        isSquare: true,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Indicator(
                        color: Color(0xffffff8d),
                        text: 'Toyota',
                        isSquare: true,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(6, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 20,
            title: '20%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 25,
            title: '25%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 5,
            title: '5%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: 10,
            title: '10%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 4:
          return PieChartSectionData(
            color: const Color(0xff6d4c41),
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 5:
          return PieChartSectionData(
            color: const Color(0xffffff8d),
            value: 10,
            title: '10%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          throw Error();
      }
    });
  }
}
