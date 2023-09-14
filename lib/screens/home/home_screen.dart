import 'package:d_chart/commons/data_model.dart';
import 'package:d_chart/ordinal/bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard_test/components/bar_chart.dart';
import 'package:flutter_dashboard_test/components/buttons.dart';
import 'package:flutter_dashboard_test/components/desktop_header.dart';
import 'package:flutter_dashboard_test/components/notifications.dart';
import 'package:flutter_dashboard_test/components/service_request.dart';
import 'package:flutter_dashboard_test/constants/constants.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: secondaryColor,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: kDefaultPaddingHorizontal),
          child: Column(
            children: [
              _size.width <= 1100
                  ? Container(
                      height: 95,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Scaffold.of(context).openEndDrawer();
                                    },
                                    icon: Icon(
                                      Icons.menu_sharp,
                                      color: iconColor,
                                    )),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey.shade300,
                                      maxRadius: 20,
                                      child: const Text(
                                        "MA",
                                        style: TextStyle(color: primaryColor),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      color: Colors.transparent,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                          ),
                          Text(
                            "Dashboard",
                            style: TextStyle(
                                color: titleColor,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  : DesktopHeader(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: StaggeredGrid.count(
                    crossAxisCount: _size.width <= 1100 ? 1 : 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: [
                      StaggeredGridTile.count(
                          crossAxisCellCount:
                              2, //crossAxis means width or horizontal
                          mainAxisCellCount: _size.width <= 1100
                              ? 0.3
                              // : _size.width <= 880
                              //     ? 1
                              : 0.9, //mainAxis means height or vertical
                          child: BarChart()),

                      _size.width <= 1100
                          ? SizedBox()
                          : StaggeredGridTile.count(
                              crossAxisCellCount: 2,
                              mainAxisCellCount: 0.55,
                              child: ServiceRequest()),
                      StaggeredGridTile.count(
                          crossAxisCellCount: 1,
                          mainAxisCellCount: _size.width > 1450 ? 0.57 : 0.8,
                          child: Buttons()),

                      _size.width <= 1100
                          ? SizedBox()
                          : StaggeredGridTile.count(
                              crossAxisCellCount: 1,
                              mainAxisCellCount: 2,
                              child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border:
                                        Border.all(color: Colors.grey.shade200),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            Text(
                                              "Notifications",
                                              style: TextStyle(
                                                color: smallTitleColor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                                letterSpacing: 1,
                                              ),
                                            ),
                                            Text(
                                              "View All",
                                              style: TextStyle(
                                                  color: subtitleColor,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13,
                                                  decoration:
                                                      TextDecoration.underline),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Expanded(
                                          child: ListView(
                                            scrollDirection: Axis.vertical,
                                            shrinkWrap: true,
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 5),
                                                child: Notifications(
                                                    date: "Sep 12, 2023",
                                                    subtitle:
                                                        "You need to update your bank account",
                                                    title:
                                                        "Setup Bank Account"),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 5),
                                                child: Notifications(
                                                    date: "Sep 01, 2023",
                                                    subtitle:
                                                        "ade one has joined Home Tru",
                                                    title:
                                                        "Tenant Joined Successfully"),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 5),
                                                child: Notifications(
                                                    date: "Aug 25, 2023",
                                                    subtitle:
                                                        "asdf one has joined Home Tru",
                                                    title:
                                                        "Tenant Joined Successfully"),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 5),
                                                child: Notifications(
                                                    date: "Aug 11, 2023",
                                                    subtitle:
                                                        "asdf one has joined Home Tru",
                                                    title:
                                                        "Tenant Joined Successfully"),
                                              )
                                            ],
                                          ),
                                        )
                                      ]))),
                      // StaggeredGridTile.count(
                      //   crossAxisCellCount: 2,
                      //   mainAxisCellCount: 1,
                      //   child: Tile(index: 4),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
