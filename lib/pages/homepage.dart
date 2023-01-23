import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:paypal/pages/contacts.dart';
import 'package:paypal/pages/home.dart';
import 'package:paypal/pages/settings.dart';
import 'package:paypal/pages/wallet.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // late TabController _tabController;
  int selectedIndex = 0;

  void _navigateTab(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    const UserHome(),
    const Contacts(),
    const Wallet(),
    const Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: GNav(
          onTabChange: _navigateTab,
          gap: 8,
          activeColor: Colors.blue,
          color: const Color.fromARGB(255, 114, 114, 114),
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              text: "Home",
            ),
            GButton(
              icon: Icons.people_outline,
              text: "Contacts",
            ),
            GButton(
              icon: Icons.wallet,
              text: "Wallet",
            ),
            GButton(
              icon: Icons.settings_outlined,
              text: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
