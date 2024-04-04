import 'dart:async';

import 'package:digicoop/page/dashboard/dashboard.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class drawerScreen extends ConsumerStatefulWidget {
  const drawerScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _drawerScreenState();
}

class _drawerScreenState extends ConsumerState<drawerScreen> {
  ValueNotifier<int> tabIndex = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
  }

  void showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Logout Confirmation',
            style: TextStyle(
              fontFamily: 'Poppins',
            ),
          ),
          content: const Text(
            'Are you sure you want to log out?',
            style: TextStyle(
              fontFamily: 'Poppins',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                // Perform logout action here
                context.pushReplacementNamed(login);
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'Dashboard',
      //     style: TextStyle(
      //         fontFamily: 'Poppins', fontSize: 24, fontWeight: FontWeight.bold),
      //   ),
      //   backgroundColor: Colors.red.shade400,
      // ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red.shade400,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage('assets/images/empty_profile.png'),
                  ),
                  const SizedBox(height: 10),
                  Positioned(
                    // frame16341172F (2034:5573)
                    left: 133 * fem,
                    top: 73 * fem,
                    child: Container(
                      width: 65 * fem,
                      height: 20 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff259ded)),
                        color: Color(0xff259ded),
                        borderRadius: BorderRadius.circular(100 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffe7eaf0),
                            offset: Offset(0 * fem, 3 * fem),
                            blurRadius: 2.5 * fem,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Verify now',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 9 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // phoebebuffayMuZ (2034:5638)
                    left: 120 * fem,
                    top: 32 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 137 * fem,
                        height: 22 * fem,
                        child: Text(
                          'Phoebe Buffay',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(
                'Dashboard',
                style: TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.w500),
              ),
              onTap: () {
                // Add your home page navigation logic here
                //Navigator.pop(context);
                context.pushNamed(dashboard);
              },
            ),
            ListTile(
              leading: const Icon(Icons.list_alt),
              title: const Text(
                'Bookings',
                style: TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.w500),
              ),
              onTap: () {
                // Add your settings page navigation logic here
                context.pushNamed(dashboard);
                //context.pushNamed(photographer);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_2_sharp),
              title: const Text(
                'Profile',
                style: TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.w500),
              ),
              onTap: () {
                // Add your settings page navigation logic here
                context.pushNamed(dashboard);
                //context.pushNamed(photographer);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text(
                'Log out',
                style: TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.w500),
              ),
              onTap: () {
                // Add your settings page navigation logic here
                showLogoutConfirmationDialog(context);
              },
            ),
          ],
        ),
      ),
      body: const dashboardScreen(),
    );
  }
}
