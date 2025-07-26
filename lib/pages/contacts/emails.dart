import 'package:flutter/material.dart';

class Emails extends StatelessWidget {
  const Emails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10.0,
      children: [
        Text(
          "Emails:",
          textAlign: TextAlign.center,
          textScaler: TextScaler.linear(2.0),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5.0,
          children: [
            Text(
              "helmi.d.hernandez@gmail.com",
              textAlign: TextAlign.left,
              textScaler: TextScaler.linear(1.2),
            ),
            Text(
              "hh757@mynsu.nova.edu",
              textAlign: TextAlign.left,
              textScaler: TextScaler.linear(1.2),
            ),
          ],
        )
      ],
    );
  }
}
