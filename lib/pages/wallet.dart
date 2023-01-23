import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Appbar Stack
                Stack(
                  children: [
                    // Background
                    Column(
                      children: [
                        // Top portion of the background
                        Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 46, 119, 188),
                            Color.fromARGB(255, 16, 82, 168),
                            Color.fromARGB(255, 19, 75, 163),
                          ])),
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 90.0, left: 10, right: 10),
                            child: Row(
                              children: const [
                                // Back button
                                Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                Spacer(),

                                // Title
                                Text(
                                  "Your wallet",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                Spacer(),

                                // Edit icon
                                Icon(
                                  Icons.note_alt_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )),
                        ),

                        // Bottom portion of Appbar
                        Container(
                          color: Colors.white,
                          height: 60,
                        )
                      ],
                    ),

                    // Profile Picture
                    Positioned(
                        left: MediaQuery.of(context).size.width * 0.3,
                        bottom: 0,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          radius: MediaQuery.of(context).size.width * 0.206,
                          child: CircleAvatar(
                            radius: MediaQuery.of(context).size.width * 0.2,
                          ),
                        ))
                  ],
                ),

                // Body
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      // Sub section
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Personal Info",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ),

                          // Name
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Text(
                                  "Name",
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "Vadim Demenko",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),

                          // Email
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Text(
                                  "Email",
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "Vadimko@gmail.com",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),

                          // Phone number
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Text(
                                  "Phone",
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  "+233 456 411 165",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      // Subtitle
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Text(
                              "My banking cards",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                            Spacer(),
                            Icon(
                              Icons.add,
                              color: Colors.grey,
                            ),
                            Text(
                              "Add",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ],
                        ),
                      ),

                      // BAnking cards
                      const ListTile(
                        leading: Icon(
                          Icons.view_cozy_sharp,
                          size: 30,
                        ),
                        title: Text("Visa"),
                        subtitle: Text(
                          "4*** **** **** 2178",
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.control_point_duplicate_rounded,
                          size: 30,
                        ),
                        title: Text("Master Card"),
                        subtitle: Text(
                          "4*** **** **** 5679",
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
