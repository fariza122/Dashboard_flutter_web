import 'package:flutter/material.dart';
import 'package:flutter_dashboard_test/constants/constants.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: 10, horizontal: kDefaultPaddingHorizontal),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade200)),
      child: ListView(
        // itemExtent: 70,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: buttonColor),
                onPressed: () {},
                child: Text(
                  "Properties \u{00B3}",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: buttonColor),
                onPressed: () {},
                child: Text(
                  "Service Providers \u{2075}",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: buttonColor),
                onPressed: () {},
                child: Text(
                  "Open Request \u{2070}",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }
}
