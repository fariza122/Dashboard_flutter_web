import 'package:flutter/material.dart';
import 'package:flutter_dashboard_test/constants/constants.dart';

class DrawerMenuItems extends StatelessWidget {
  const DrawerMenuItems({
    required this.isActive,
    this.isHover = false,
    this.showBorder = true,
    required this.icon,
    required this.title,
    required this.press,
  });

  final bool isActive, isHover, showBorder;
  final String title;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Row(
        children: [
          // (isActive || isHover) ? Icon(icon) : SizedBox(width: 15),
          SizedBox(width: kDefaultPaddingHorizontal / 4),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: showBorder
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color:
                              isActive ? Color(0xFFDFE2EF) : Colors.transparent,
                          width: isActive ? 2 : 0)
                      //  BorderSide(color: Color(0xFFDFE2EF)),

                      )
                  : null,
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: kTitleTextColor,
                  ),
                  SizedBox(width: kDefaultPaddingHorizontal * 0.75),
                  Text(title,
                      style: TextStyle(
                        color: kTitleTextColor,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.4,
                      )),
                  Spacer(),
                  // if (itemCount != null) CounterBadge(count: itemCount)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
