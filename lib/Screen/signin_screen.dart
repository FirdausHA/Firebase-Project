import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:project_firebase/Screen/Bottom_Navbar.dart';
import 'package:project_firebase/Screen/signup_screen.dart';
import 'package:project_firebase/reusable_widget/reusable_widget.dart';
import 'package:project_firebase/utils/color_utils.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                // Image.asset("assets/images/pinkgold_1.png"),
                SizedBox(
                  height: 20,
                ),
                reusableTextField(
                  "Enter Username", Icons.person_off_outlined, true, _emailTextController),
                SizedBox(
                  height: 10,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true, _passwordTextController),
                SizedBox(
                  height: 20,
                ),
                signInSignUpButton(context, true, () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Bottom()));
                }),
                signUpOption()
              ],
            ),
          )
      ),
    );
  }

  Row signUpOption() {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Don't have account?",
        style: TextStyle(color: Colors.white)),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
        },
      ),
      const Text("Sign Up",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

