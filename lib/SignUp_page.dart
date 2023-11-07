import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:raagavaidya/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 50, right: 50),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Text(
              'RaagaVaidya',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 50,
                fontFamily: 'GreatVibes',
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            TextField(
              style: TextStyle(color: Colors.black54),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                hintText: 'UserName',
                prefixIcon: Icon(Icons.people_rounded, color: Colors.blue),
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(15)),
                // ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // TextField(
            //   style: TextStyle(color: Colors.black54),
            //   keyboardType: TextInputType.emailAddress,
            //   decoration: InputDecoration(
            //     contentPadding: EdgeInsets.all(20),
            //     hintText: 'User Email',
            //     prefixIcon: Icon(Icons.mail, color: Colors.blue),
            //   ),
            // ),
            TextField(
              controller: _emailTextController,
              style: TextStyle(color: Colors.black54),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                hintText: 'User Email',
                prefixIcon: Icon(Icons.email, color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _passwordTextController,
              obscureText: true,
              style: TextStyle(color: Colors.black54),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                hintText: 'User Password',
                prefixIcon: Icon(Icons.lock, color: Colors.blue),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Container(
              width: double.infinity,
              child: RawMaterialButton(
                fillColor: Colors.blue,
                elevation: 0,
                padding: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                onPressed: () async {
                  try {
                    print("Firebase is initialized");
                    await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text,
                    )
                        .then(
                      (value) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                    );
                  } catch (e) {
                    print("Error creating user: $e");
                  }
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
