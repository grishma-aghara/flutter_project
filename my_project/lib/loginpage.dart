import 'package:flutter/material.dart';
import 'package:my_project/mainpage1.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? check1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Column(
            children: [
              Container(
                  child: Image.asset(
                "assets/images/instgram.jpg",
                height: 90,
                fit: BoxFit.cover,
              )),
              SizedBox(
                width: double.infinity,
                height: 30,
              ),
              SizedBox(
                // height: 200,
                width: 350,
                child: FloatingActionButton.extended(
                  label: Text(
                    'Continue with Facebook',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  // <-- Text
                  backgroundColor: Colors.blue,

                  icon: Icon(
                    // <-- Icon
                    Icons.facebook,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Divider(
                          color: Colors.black,
                        )),
                    flex: 4,
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          "OR",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Divider(
                          color: Colors.black,
                        )),
                    flex: 4,
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 30,
              ),
              Container(
                //margin: EdgeInsets.only(left: 200, right: 200),
                child: Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: SizedBox(
                    width: 600,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Phone number,username or email",
                        icon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 10,
              ),
              Container(
                //margin: EdgeInsets.only(left: 200, right: 200),
                child: Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: SizedBox(
                    width: 600,
                    child: TextField(
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        hintText: "password",
                        icon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Expanded(
                    child: Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Your Password?",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 20,
              ),
              SizedBox(
                width: 350,
                child: FloatingActionButton.extended(
                  label: Text(
                    'Log in',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  // <-- Text
                  backgroundColor: Colors.blue,
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return MainPage1();
                          },
                        ),
                      );
                    });
                  },
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 20,
              ),
              Row(
                children: <Widget>[
                  const Text('Don`t have an account?'),
                  TextButton(
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
