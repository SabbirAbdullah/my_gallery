import 'package:flutter/cupertino.dart';


class WelcomeHome extends StatelessWidget {
  const WelcomeHome({super.key});
  @override
  Widget build(BuildContext context) {
    return  const Text(
        'WELCOME TO GAllERY',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
         fontFamily: "DancingScript"
        ),

    );
  }}