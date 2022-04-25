import 'package:flutter/material.dart';
import 'package:ngebanten/screen/login.dart';
import 'package:ngebanten/screen/register.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ngebanten',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              backgroundImage: AssetImage('assets/img/ngebanten-bg.png'),
              radius: 80,
            ),
            Container(
              child: const Padding(
                padding: EdgeInsets.only(
                  top: 60,
                  bottom: 20,
                ),
                child: Center(
                  child: Text("Daftar atau Masuk klik tombol dibawah",
                      style: TextStyle(color: Colors.white, fontSize: 14,)),
                ),
              ),
            ),
            MaterialButton(
              minWidth: 150,
              elevation: 0,
              color: Colors.white,
              textColor: Colors.lime,
              child: const Text(
                "Daftar",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.push(
                context, MaterialPageRoute(builder: (context) => const SignUp()));
              },
            ),
            TextButton(
              child: const Text(
                "Masuk",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18),
              ),
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
