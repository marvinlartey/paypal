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
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 46, 119, 188),
                Color.fromARGB(255, 16, 82, 168),
                Color.fromARGB(255, 19, 75, 163),
              ])),
              child: Stack(children: [Expanded(child: Container())]),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  // SEND AND RECEIVE MONEY CARDS
                  Row(
                    children: const [
                      // SEND MONEY CARD
                      TransferCard(
                          text: "Send        Money",
                          icon: Icons.ios_share_outlined),
                      // RECEIVE MONEY CARD
                      TransferCard(
                        text: "Request Payment",
                        icon: Icons.install_mobile_outlined,
                      ),
                      // MORE OPTIONS
                      Card(
                        child: Center(child: Icon(Icons.more_vert)),
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
  }) : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(8),
      elevation: 5,
      color: Colors.blue,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 9, 96, 176),
              Color.fromARGB(255, 19, 75, 163)
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 100,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: 30,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  text,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
