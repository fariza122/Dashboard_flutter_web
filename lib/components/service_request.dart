import 'package:flutter/material.dart';
import 'package:flutter_dashboard_test/constants/constants.dart';

class ServiceRequest extends StatelessWidget {
  const ServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Service Request",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: smallTitleColor,
                  letterSpacing: 1,
                ),
              ),
              Text(
                "View All",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: subtitleColor,
                    fontSize: 13,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Table(
            border: TableBorder.all(color: Colors.grey.shade200),
            children: [
              //This table row is for the table header which is static
              TableRow(
                  decoration: BoxDecoration(color: secondaryColor),
                  children: const [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Text(
                        "Property",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: smallTitleColor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Type",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: smallTitleColor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Request By",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: smallTitleColor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Status",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: smallTitleColor),
                      ),
                    ),
                  ]),
            ],
          ),
          Table(
            border: TableBorder.all(color: Colors.grey.shade200),
            children: const [
              TableRow(children: [
                SizedBox(
                  height: 50,
                  child: Center(
                    child: Text(
                      "No Records Found",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ])
            ],
          )
        ],
      ),
    );
  }
}
