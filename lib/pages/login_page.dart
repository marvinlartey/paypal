import 'package:flutter/material.dart';
import 'package:paypal/pages/homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.2,
              ),
              child: const Center(
                child: Text(
                  "PayPal",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 28, 54, 157)),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 50),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    label: Center(child: Text("Enter your name or e-mail")),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(22)))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 50),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    label: Center(child: Text("Password")),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(22)))),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 10, 93, 174),
                  shadowColor: const Color.fromARGB(100, 10, 93, 174),
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0),
                      borderRadius: BorderRadius.circular(18)),
                  minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.8, 65)),
              child: const Text(
                "Log In",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            const Center(
              child: Text(
                "Having trouble logging in?",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Divider(
              height: 80,
              thickness: 2,
              indent: MediaQuery.of(context).size.width * 0.4,
              endIndent: MediaQuery.of(context).size.width * 0.4,
            ),
            const Center(
              child: Text(
                "Sign Up",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
