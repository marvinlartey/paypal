import 'package:flutter/cupertino.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Text("Wallet"),
      ),
    );
  }
}
