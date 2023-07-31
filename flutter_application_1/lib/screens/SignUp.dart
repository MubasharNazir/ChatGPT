import 'package:flutter/material.dart';
import 'package:medecine_donation_app/screens/login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formkey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneController = TextEditingController();

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final confirmPasswordFocusNode = FocusNode();
  final phoneFocusNode = FocusNode();

  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
  }

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
                    'Register Now',
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
                key: _formkey,
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
                        controller: emailController,
                        focusNode: emailFocusNode,
                        decoration: InputDecoration(
                            hintText: 'Enter Email',
                            icon: Icon(
                              Icons.mail,
                              color: Colors.blue,
                            ),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'enter the email';
                          }
                          return null;
                        },
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
                        controller: passwordController,
                        focusNode: passwordFocusNode,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Enter Password',
                            icon: Icon(
                              Icons.vpn_key,
                              color: Colors.blue,
                            ),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'enter the email';
                          }
                          return null;
                        },
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
                        controller: confirmPasswordController,
                        focusNode: confirmPasswordFocusNode,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Enter Confirm Password',
                            icon: Icon(
                              Icons.lock,
                              color: Colors.blue,
                            ),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'enter the email';
                          }
                          return null;
                        },
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
                        controller: phoneController,
                        focusNode: phoneFocusNode,
                        decoration: InputDecoration(
                            hintText: 'Enter Phone Number',
                            icon: Icon(
                              Icons.numbers,
                              color: Colors.blue,
                            ),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'enter the email';
                          }
                          return null;
                        },
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
                          if (_formkey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => LoginScreen())));
                          }
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                      ),
                    ),
                  ],
                )),
          )
        ]),
      ),
    );
  }
}
