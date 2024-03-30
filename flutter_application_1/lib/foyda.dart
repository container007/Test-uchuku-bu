import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/input.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Carusel1(),
  ));
}

class Carusel1 extends StatefulWidget {
  const Carusel1({Key? key}) : super(key: key);

  @override
  State<Carusel1> createState() => _Carusel1State();
}

class _Carusel1State extends State<Carusel1> {
  bool _loading = false;
  Container man = Container(
    height: 50,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 900,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/rasm4.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      width: 500,
                      height: 600,
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
                          width: 2,
                          color: Colors.grey,
                        ),
                      ),
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
                                    backgroundImage:
                                        AssetImage("images/tel4.jpg"),
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
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Center(
                            child: Container(
                              width: 300,
                              height: 300,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/rasm1.gif"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Hello!",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 35,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Text(
                              "Welcome to our application, best place ",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: InkWell(
                              onTap: _loading
                                  ? null
                                  : () {
                                      setState(() {
                                        _loading = true;
                                      });
                                      Future.delayed(Duration(seconds: 1), () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Input(),
                                          ),
                                        );
                                      });
                                    },
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "to manage your schedule",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    
                                  ],
                                ),
                              ),
                            ),
                          ),
                            // SizedBox(height: 20),
                          if (_loading)
                                      Center(
                                        child: CircularProgressIndicator(
                                          valueColor: AlwaysStoppedAnimation<Color>(
                                            Colors.black,
                                          )
                                        ),
                                      ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: _loading
                                  ? null
                                  : () {
                                      setState(() {
                                        _loading = true;
                                      });
                                      Future.delayed(Duration(seconds: 1), () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Input(),
                                          ),
                                        );
                                      });
                                    },
                              child: Center(
                                child: Container(
                                  width: 280,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.blue[800],
                                    // color: _loading
                                    //     ? Colors.grey
                                    //     : Colors.blue[900],
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Center(
                                    child: 
                                    // _loading
                                    //     ? CircularProgressIndicator()
                                         Text(
                                            "Next",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
