import 'package:flutter/material.dart';
import 'package:paypal/pages/home.dart';

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // App bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8),
              child: Row(
                children: const [
                  Icon(
                    Icons.keyboard_backspace_rounded,
                    size: 40,
                  ),
                  Spacer(),
                  Text(
                    "Activity",
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    size: 40,
                  )
                ],
              ),
            ),

            // TABS
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 9.0, horizontal: 30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 243, 243, 243),
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 0, 94, 166),
                      ),
                      width: 90,
                      height: 50,
                      child: const Center(
                        child: Text(
                          "All",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(1, 0, 94, 166),
                      ),
                      width: 100,
                      height: 50,
                      child: const Center(
                          child: Text(
                        "Income",
                        style: TextStyle(color: Colors.grey),
                      )),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(1, 0, 94, 166),
                      ),
                      width: 100,
                      height: 50,
                      child: const Center(
                          child: Text(
                        "Expenses",
                        style: TextStyle(color: Colors.grey),
                      )),
                    ),
                  ],
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Today",
                style: TextStyle(color: Colors.grey),
              ),
            ),

            const ActivityTile(
                name: "Mike Rine", time: "5 minutes ago", amount: "+\$250"),
            const ActivityTile(
                name: "Mike Rine", time: "5 minutes ago", amount: "+\$250"),
            const ActivityTile(
                name: "Mike Rine", time: "5 minutes ago", amount: "+\$250"),

            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Yesterday",
                style: TextStyle(color: Colors.grey),
              ),
            ),

            const ActivityTile(
                name: "Mike Rine", time: "5 minutes ago", amount: "+\$250"),
            const ActivityTile(
                name: "Mike Rine", time: "5 minutes ago", amount: "+\$250"),
            const ActivityTile(
                name: "Mike Rine", time: "5 minutes ago", amount: "+\$250"),
          ]),
        ),
      ),
    );
  }
}
