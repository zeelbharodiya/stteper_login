import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr1_stepper_login/stepperpage.dart';


void main(){
  runApp(
    Myapp(),
  );
}


class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => StepperPage(),
      },
    );
  }
}
