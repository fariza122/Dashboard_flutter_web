import 'package:flutter/material.dart';
import 'package:flutter_dashboard_test/constants/constants.dart';

class DesktopHeader extends StatefulWidget {
  const DesktopHeader({super.key});

  @override
  State<DesktopHeader> createState() => _DesktopHeaderState();
}

class _DesktopHeaderState extends State<DesktopHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Dashboard",
                style: TextStyle(
                    color: titleColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Welcome back, Mudasir",
                style: TextStyle(
                    color: subtitleColor,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none,
                    color: iconColor,
                  )),
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                maxRadius: 20,
                child: const Text(
                  "MA",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Mudasir Asdf",
                      style: TextStyle(
                          fontSize: 14,
                          color: titleColor,
                          fontWeight: FontWeight.bold),
                    ),
                    // SizedBox(
                    //   height: 6,
                    // ),
                    Text(
                      "Operation Manager",
                      style: TextStyle(
                        color: subtitleColor,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.logout_outlined,
                    color: iconColor,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
