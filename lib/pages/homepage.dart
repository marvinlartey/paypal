import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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

  final List<Widget> _list = [
    Text("data"),
    Text("fdas"),
    Text("fasad"),
    Text("dawqeta"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: _list[selectedIndex],

        // TabBarView(
        //   // controller: _tabController,
        //   children: [
        //     CustomScrollView(
        //       slivers: [
        //         SliverAppBar(
        //           automaticallyImplyLeading: false,
        //           collapsedHeight: 600,
        //           flexibleSpace: Stack(children: [
        //             Expanded(
        //                 child: Container(
        //               color: Colors.amber,
        //             ))
        //           ]),
        //         ),
        //       ],
        //     ),
        //     const Icon(Icons.directions_car),
        //     const Icon(Icons.directions_transit),
        //     const Icon(Icons.directions_bike),
        //   ],
        // ),
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
