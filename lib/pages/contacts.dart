import 'package:flutter/material.dart';
import 'package:paypal/pages/send_money.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(children: [
            Row(
              children: const [
                Icon(Icons.arrow_back_outlined),
                Spacer(),
                Text(
                  "Contacts",
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                Icon(Icons.add)
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
              child: TextField(
                decoration:
                    InputDecoration(labelText: 'Enter a name or e-mail'),
              ),
            ),

            Container(
              margin: const EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.9,
              child: ListView.separated(
                itemCount: 30,
                itemBuilder: (BuildContext context, int index) {
                  return Material(
                    elevation: 2,
                    borderRadius: BorderRadius.circular(10),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SendMoney()));
                      },
                      leading: const Icon(Icons.circle),
                      title: const Text("Andrews DIllan"),
                      subtitle: const Text("Andrews@gmail.com"),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
              ),
            ),
            // const ListTile(
            //   leading: Icon(Icons.circle),
            //   title: Text("Andrews DIllan"),
            //   subtitle: Text("Andrews@gmail.com"),
            // ),
          ]),
        ),
      ),
    );
  }
}
