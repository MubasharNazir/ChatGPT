import 'package:flutter/material.dart';
import 'package:medecine_donation_app/screens/SignUp.dart';
import 'package:medecine_donation_app/screens/dashbored.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 260,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
              color: Colors.blue,
            ),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Image.asset('images/logo.jpg'),
                  height: 90,
                  width: 90,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, top: 20),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )),
          ),
          Container(
            child: Form(
                child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200],
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color(0xffEEEEEE))
                      ]),
                  alignment: Alignment.center,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter Email',
                        icon: Icon(
                          Icons.mail,
                          color: Colors.blue,
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200],
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color(0xffEEEEEE))
                      ]),
                  alignment: Alignment.center,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Enter Password',
                        icon: Icon(
                          Icons.vpn_key,
                          color: Colors.blue,
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, right: 20),
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    child: Text('Forget Password?'),
                    onTap: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  height: 54,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Dashbored())));
                    },
                    child: Text(
                      'Login',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 45, right: 20),
                  child: Row(
                    children: [
                      Text('Dont have an account?'),
                      GestureDetector(
                        child: Text('SignUp',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold)),
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()));
                        }),
                      )
                    ],
                  ),
                )
              ],
            )),
          )
        ]),
      ),
    );
  }
}
