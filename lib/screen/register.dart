import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(const SignUp());

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
              width: 290,
              color: Colors.white,
              child: TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.lime,
                      width: 1.5,
                    )),
                    hintText: "Nama Lengkap"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 290,
              color: Colors.white,
              child: TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.lime,
                      width: 1.5,
                    )),
                    hintText: "Username"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 290,
              color: Colors.white,
              child: TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.lime,
                      width: 1.5,
                    )),
                    hintText: "Email"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 290,
              color: Colors.white,
              child: TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.lime,
                      width: 1.5,
                    )),
                    hintText: "Password"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              padding: const EdgeInsets.all(20),
              minWidth: 250,
              elevation: 0,
              child: const Text(
                "Daftar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20),
              ),
              color: Colors.lime,
              onPressed: () {},
            ),
            TextButton(
              child: const Text("Sudah punya akun? Masuk",
                  style: TextStyle(color: Colors.lime)),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Login()));
              },
            )
          ],
        ),
      ),
    );
  }
}
