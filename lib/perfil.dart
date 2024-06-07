import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              padding: const EdgeInsets.all(10),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 250,
              padding: const EdgeInsets.all(10),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/description');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: const Text('Login', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
