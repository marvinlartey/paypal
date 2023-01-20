import 'package:flutter/material.dart';
import 'package:paypal/pages/numpad.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  final TextEditingController _myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: const Text(
            "Send Money",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 0,
                  child: ListTile(
                    // isThreeLine: true,
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "To:",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Text("Ann Nielsen"),
                      ],
                    ),
                    subtitle: const Text("AnnAnna@gmail.com"),
                    leading: const Icon(
                      Icons.circle,
                      size: 40,
                    ),
                  ),
                ),
                TextField(
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  showCursor: false,
                  controller: _myController,
                  keyboardType: TextInputType.none,
                ),
                NumPad(
                    delete: () {
                      _myController.text = _myController.text
                          .substring(0, _myController.text.length - 1);
                    },
                    onSubmit: () {
                      debugPrint('Your code: ${_myController.text}');
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                content: Text(
                                  "You code is ${_myController.text}",
                                  style: const TextStyle(fontSize: 30),
                                ),
                              ));
                    },
                    controller: _myController),
                const SizedBox(height: 50),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 5,
                        primary: Color.fromARGB(255, 26, 79, 170)),
                    onPressed: (() {}),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 60,
                      child: const Center(
                          child: Text(
                        "Send",
                        style: TextStyle(fontSize: 18),
                      )),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
