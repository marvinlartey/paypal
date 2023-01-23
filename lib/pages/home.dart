import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:paypal/pages/activity.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            collapsedHeight: MediaQuery.of(context).size.height * 0.3,
            flexibleSpace: Stack(
              children: [
                // Background
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 46, 119, 188),
                    Color.fromARGB(255, 16, 82, 168),
                    Color.fromARGB(255, 19, 75, 163),
                  ])),
                  child: Stack(children: [Expanded(child: Container())]),
                ),

                // foreground
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.autofps_select_sharp,
                            size: 50,
                            color: Colors.white,
                          ),
                          Spacer(),
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 25,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Hello, Vadim!",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "\$300.32",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                      const Text(
                        "Your Balance",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  // SEND AND RECEIVE MONEY CARDS
                  Row(
                    children: [
                      // SEND MONEY CARD
                      const TransferCard(
                        text: "Send        Money",
                        icon: Icons.ios_share_outlined,
                        background: [
                          Color.fromARGB(255, 9, 96, 176),
                          Color.fromARGB(255, 19, 75, 163)
                        ],
                        foreground: Colors.white,
                        elevation: 5,
                      ),
                      // RECEIVE MONEY CARD
                      const TransferCard(
                        text: "Request Payment",
                        icon: Icons.install_mobile_outlined,
                        background: [
                          Color.fromARGB(255, 255, 255, 255),
                          Color.fromARGB(255, 255, 255, 255)
                        ],
                        foreground: Color.fromARGB(255, 9, 96, 176),
                        elevation: 0,
                      ),
                      // MORE OPTIONS
                      Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: const SizedBox(
                            width: 50,
                            height: 130,
                            child: Center(
                                child: Icon(
                              Icons.more_vert,
                              size: 30,
                              color: Colors.grey,
                            ))),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // SUBTITLE
                  Row(
                    children: [
                      const Text("Activity"),
                      const Spacer(),
                      OpenContainer(
                        closedElevation: 0,
                        closedBuilder:
                            (BuildContext context, void Function() action) {
                          return const Text("View All");
                        },
                        openBuilder: (BuildContext context,
                            void Function({Object? returnValue}) action) {
                          return const Activity();
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // ACTIVITY TILES
                  const ActivityTile(
                    amount: "+\$255",
                    name: "Mike Rine",
                    time: "2 hours ago",
                  ),
                  const ActivityTile(
                    amount: '-\$255',
                    name: 'Google Drive',
                    time: 'yesterday',
                  ),
                  const ActivityTile(
                    amount: '+\$124',
                    name: 'Casey Street',
                    time: '1 week ago',
                  ),
                  const ActivityTile(
                    amount: '+\$999',
                    name: 'Marvin Lartey',
                    time: '1 month ago',
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ActivityTile extends StatelessWidget {
  const ActivityTile({
    Key? key,
    required this.name,
    required this.time,
    required this.amount,
  }) : super(key: key);
  final String name;
  final String time;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          elevation: 1,
          child: ListTile(
            leading: const Icon(Icons.access_alarm),
            title: Text(name),
            subtitle: Text(time),
            trailing: Text(
              amount,
              style: const TextStyle(color: Colors.green),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}

class TransferCard extends StatelessWidget {
  const TransferCard({
    Key? key,
    required this.text,
    required this.icon,
    required this.foreground,
    required this.background,
    required this.elevation,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final Color foreground;
  final List<Color> background;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(8),
      elevation: elevation,
      color: Colors.blue,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: background),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            width: 100,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    icon,
                    color: foreground,
                    size: 30,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      color: foreground,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
