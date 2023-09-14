import 'package:flutter/material.dart';
import 'package:flutter_dashboard_test/constants/constants.dart';

class Notifications extends StatelessWidget {
  final title;
  final subtitle;
  final date;
  const Notifications(
      {super.key,
      required this.date,
      required this.subtitle,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
      decoration: BoxDecoration(
          border: Border.all(color: kButtonColor),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.campaign_rounded,
                  color: Colors.orange.shade300,
                  size: 40,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title,
                          softWrap: true,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          subtitle,
                          softWrap: true,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            date,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
