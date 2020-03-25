import 'package:flutter/material.dart';
import 'package:the_forecast_club/constants.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Image(
                image: AssetImage('assets/images/lady0.jpg'),
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height - 390,
                width: double.infinity),
            Form(),
          ],
        ),
      ),
    );
  }
}

class Form extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 445,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            color: kHomePage),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 25.0,
            right: 20.0,
            left: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Welcome!',
                    style: kWelcome,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Login to continue',
                    style: kloginText,
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(
                    Icons.email,
                    color: kIcon,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kborderline)),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(
                    Icons.vpn_key,
                    color: kIcon,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kborderline)),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 16,
                      color: kPinkAccent,
                    ),
                  ),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: kIcon,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  color: kborderline,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: kLogiButton,
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
