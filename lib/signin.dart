import 'package:flutter/material.dart';
import 'package:flutter_application_1/signup.dart';
import 'package:flutter_application_1/widgets/custom_button.dart';

import 'contraints.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(gradient: bg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.chevron_left,
                      color: Colors.grey,
                      size: 30,
                    )),
                const SizedBox(
                  height: 30,
                ),
                Center(child: SizedBox(width: 150, child: LogoImage)),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  "Login with email?",
                  style: TextStyle(
                      color: Color.fromARGB(192, 255, 255, 255),
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Phone number", style: light_text),
                TextFormField(
                    decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                )),
                const SizedBox(
                  height: 25,
                ),
                const Text("Password", style: light_text),
                TextFormField(
                    decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                )),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      checkColor: Colors.blue,
                      activeColor: const Color.fromARGB(255, 194, 190, 190),
                      value: _checked,
                      onChanged: (value) {
                        setState(() {
                          _checked = value!;
                        });
                      },
                    ), //Che
                    const Text(
                      "Remember me",
                      style: TextStyle(
                          color: Color.fromARGB(192, 255, 255, 255),
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                CustomButton(onclickFunction: () {}, text: "Log in"),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                    onclickFunction: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),
                      );
                    },
                    text: "Register"),
                const SizedBox(
                  height: 12,
                ),
                const Center(
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color.fromARGB(192, 255, 255, 255),
                        fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    "By clicking on Log in, you agree to our",
                    style: TextStyle(
                        color: Color.fromARGB(150, 255, 255, 255),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Terms of use",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: TextButton(
                    child: const Text("Demo mode",
                        style: TextStyle(
                            color: Color.fromARGB(221, 151, 145, 145))),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
