import 'dart:async';
import 'package:flutter/material.dart';

import 'dart:ui';

import 'package:flutter_application_1/x.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Input(),
  ));
}

class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String _errorMessage = "";
  bool _loading = false;

  void _login() {
    setState(() {
      String username = _usernameController.text;
      String password = _passwordController.text;

      // Replace this with your actual login validation logic
      if (username == "Nuri" && password == "1234567") {
        _errorMessage = ""; // Xato xabarini tozalash
        _loading = true; // Yuklash indikatorini ko'rsatish
        Timer(Duration(seconds: 1), () {
          // Ko'rsatishni ko'rsatish uchun 3 soniya gecikishni imitatsiya qiling
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => DynamicRows()),
          );
        });
      } else {
        _errorMessage = "Password or Username is wrong!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 900,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/rasm4.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            backgroundImage: AssetImage("images/tel4.jpg"),
                            radius: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Bato",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text(
                      "Welcome!",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                      child: Container(
                        width: 400,
                        height: 60,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.white.withOpacity(0.4),
                              Colors.black.withOpacity(0.4)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          border: Border.all(
                            width: 0,
                            color: Colors.grey,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              controller: _usernameController,
                              decoration: InputDecoration(
                                labelText: "Username",
                                // border: OutlineInputBorder(
                                //   // borderSide: BorderSide(
                                //   //   width: 20,
                                //   //   color: Colors.red,
                                //   // ),
                                //   borderRadius: BorderRadius.all(
                                //     Radius.circular(15),
                                //   ),
                                // ),
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                      child: Container(
                        width: 400,
                        height: 60,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.white.withOpacity(0.4),
                              Colors.black.withOpacity(0.4)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          border: Border.all(
                            width: 0,
                            color: Colors.grey,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                //   fillColor: Colors.black.withOpacity(0.6),

                                // filled: true,
                                labelText: "Password",
                                // border: OutlineInputBorder(
                                //   borderSide: BorderSide(
                                //     width: 20,
                                //     color: Colors.red,
                                //   ),
                                //   borderRadius: BorderRadius.all(
                                //     Radius.circular(15),
                                //   ),
                                // ),
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: _loading ? null : _login,
                    child: Center(
                      child: Container(
                        width: 200,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue[800],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Center(
                    child: Text(
                      _errorMessage,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(child: Text("Username: Nuri")),
                  SizedBox(
                    height: 10,
                  ),
                  Center(child: Text("parol: 1234567")),
                  SizedBox(
                    height: 200,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
