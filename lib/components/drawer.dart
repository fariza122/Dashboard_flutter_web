import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard_test/components/drawer_items.dart';
import 'package:flutter_dashboard_test/constants/constants.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({super.key});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  showAddProperty(BuildContext context) {
    return showGlobalDrawer(
      barrierDismissible: false,
      direction: AxisDirection.right,
      context: context,
      builder: (BuildContext context) {
        return Drawer(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Name",
                      icon: Icon(Icons.account_box),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Email",
                      icon: Icon(Icons.email),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Message",
                      icon: Icon(Icons.message),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
        // AlertDialog(
        //   alignment: Alignment.centerRight,
        //   scrollable: true,
        //   title: const Text("Login"),
        //   content: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Form(
        //       child: Column(
        //         children: [
        //           TextFormField(
        //             decoration: const InputDecoration(
        //               labelText: "Name",
        //               icon: Icon(Icons.account_box),
        //             ),
        //           ),
        //           TextFormField(
        //             decoration: const InputDecoration(
        //               labelText: "Email",
        //               icon: Icon(Icons.email),
        //             ),
        //           ),
        //           TextFormField(
        //             decoration: const InputDecoration(
        //               labelText: "Message",
        //               icon: Icon(Icons.message),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        //   actions: [
        //     ElevatedButton(
        //       child: const Text("submit"),
        //       onPressed: () {
        //         // your code
        //       },
        //     ),
        //   ],
        // );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPaddingHorizontal,
          vertical: kDefaultPaddingVertical * 2),
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(right: BorderSide(color: Color(0xFFDFE2EF)))),
      child: Column(children: [
        Image.asset(
          "images/logo2.png",
          width: 250,
          // height: 230,
          alignment: Alignment.topCenter,
        ),
        SizedBox(height: kDefaultPaddingVertical * 2),
        DrawerMenuItems(
          press: () {},
          title: "Dashboard",
          icon: Icons.signal_cellular_alt_sharp,
          isActive: true,
        ),
        DrawerMenuItems(
          press: () {
            // showAddProperty(context);
            Scaffold.of(context).openEndDrawer();
          },
          title: "Add Property",
          icon: Icons.home_outlined,
          isActive: false,
        ),
        DrawerMenuItems(
          press: () {},
          title: "Tenants",
          icon: Icons.people_alt_outlined,
          isActive: false,
        ),
      ]),
    );
  }
}
