// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ngebanten/navbottom/navbottom.dart';
import 'package:ngebanten/screen/register.dart';

void main() => runApp(const Login());

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              width: 270,
              color: Colors.white,
              child: TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lime,
                        width: 1.5,
                      ),
                    ),
                    hintText: "Email"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 270,
              color: Colors.white,
              child: TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lime,
                        width: 1.5,
                      ),
                    ),
                    hintText: "Password"),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            MaterialButton(
              padding: const EdgeInsets.all(20),
              minWidth: 250,
              elevation: 0,
              color: Colors.lime,
              child: const Text(
                "Masuk",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                context, MaterialPageRoute(builder: (context) => const BottomNav()));
              },
            ),
            TextButton(
              child: const Text(
                "Belum punya akun? Daftar",
                style: TextStyle(color: Colors.lime),
              ),
              onPressed: () {
                Navigator.push(
                context, MaterialPageRoute(builder: (context) => const SignUp()));
              },
            )
          ],
        ),
      ),
    );
  }
}
