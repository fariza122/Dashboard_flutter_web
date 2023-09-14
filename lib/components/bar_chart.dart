import 'package:d_chart/commons/data_model.dart';
import 'package:d_chart/ordinal/bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard_test/constants/constants.dart';

class BarChart extends StatelessWidget {
  const BarChart({super.key});

  @override
  Widget build(BuildContext context) {
    List<OrdinalData> ordinalList = [
      OrdinalData(domain: 'JAN', measure: 0),
      OrdinalData(domain: 'FEB', measure: 0),
      OrdinalData(domain: 'MAR', measure: 0),
      OrdinalData(domain: 'ARP', measure: 0),
      OrdinalData(domain: 'MAY', measure: 0),
      OrdinalData(domain: 'JUN', measure: 0),
      OrdinalData(domain: 'JUL', measure: 0),
      OrdinalData(domain: 'AUG', measure: 30),
      OrdinalData(domain: 'SEP', measure: 0),
      OrdinalData(domain: 'OCT', measure: 0),
      OrdinalData(domain: 'NOV', measure: 0),
      OrdinalData(domain: 'DEC', measure: 0),
    ];

    final ordinalGroup = [
      OrdinalGroup(
        id: '1',
        data: ordinalList,
        color: barColor,
      ),
    ];

    Size _size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPaddingHorizontal),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade200)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            "Transactions",
            style: TextStyle(
                color: smallTitleColor,
                fontWeight: FontWeight.bold,
                fontSize: 17,
                letterSpacing: 1),
          ),
          Expanded(
            child: AspectRatio(
                aspectRatio: _size.width <= 1100
                    ? 16 / 4.3
                    // : _size.width <= 880
                    //     ? 9 / 3
                    : 16 / 6.1,
                child: DChartBarO(
                  groupList: ordinalGroup,
                )),
          ),
        ],
      ),
    );
  }
}
