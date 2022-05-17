// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final onclickFunction;
  final String text;
  const CustomButton(
      {Key? key, required this.onclickFunction, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: RaisedButton(
        color: const Color.fromARGB(153, 158, 158, 158),
        onPressed: onclickFunction,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        padding: const EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.7)),
          child: Container(
            width: MediaQuery.of(context).size.width,
            constraints: const BoxConstraints(minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 207, 204, 204),
                  fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
