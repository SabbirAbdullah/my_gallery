import 'package:flutter/material.dart';
import 'constants.dart';

class CustomButton {
  static Button(
    VoidCallback onPressed,
    String text,
  ) {
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style:
            const ButtonStyle(backgroundColor: WidgetStatePropertyAll(buttonColor)),
        child: Text(
          text,
          style: const TextStyle(color: textWhite, fontSize: 20),
        ),
      ),
    );
  }
}
