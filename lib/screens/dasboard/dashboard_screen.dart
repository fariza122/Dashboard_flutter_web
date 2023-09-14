import 'package:flutter/material.dart';
import 'package:flutter_dashboard_test/components/drawer.dart';
import 'package:flutter_dashboard_test/constants/constants.dart';
import 'package:flutter_dashboard_test/responsive/responsive.dart';
import 'package:flutter_dashboard_test/screens/add_property/add_property_screen.dart';
import 'package:flutter_dashboard_test/screens/home/home_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: AddPropertyScreen(),
        body: Responsive(
          desktop: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                flex: 1,
                child: DrawerMenu(),
              ),
              Expanded(
                flex: 4,
                child: HomeScreen(),
              ),
            ],
          ),
          mobile: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                flex: 4,
                child: HomeScreen(),
              ),
            ],
          ),
          tablet: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                flex: 4,
                child: HomeScreen(),
              ),
            ],
          ),
        )

        //
        );
  }
}
