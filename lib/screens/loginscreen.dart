import 'package:flutter/material.dart';
import 'package:cunclt_project/screens/colors.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'Homescreen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          'Login Page',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/sign_in.png",
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: TextFormField(
                  decoration: textFieldDecorationEmail,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: Form(
                  child: TextFormField(
                    decoration: textFieldDecorationPassword,
                    obscureText: true,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20, top: 20),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Forgot password ?",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.only(
                        left: 60, right: 60, top: 10, bottom: 10),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.white,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: const BorderSide(color: Colors.black)),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
