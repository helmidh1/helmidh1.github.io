import 'package:flutter/material.dart';

//ignore: must_be_immutable
class Skill extends StatelessWidget {
  final String name;
  final String imagePath;
  late bool observed;

  Skill({
    super.key,
    required this.name,
    required this.imagePath,
    this.observed = false,
  });

  bool getObserved() {
    return observed;
  }

  void setObserved() {
    observed = !observed;
  }

  String getName() {
    return name;
  }

  String getImagePath() {
    return imagePath;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(imagePath),
        AnimatedPositioned(
          bottom: observed ? 0 : -100,
          curve: Curves.easeIn,
          duration: Duration(milliseconds: 300),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 80, 80, 80),
                const Color.from(alpha: 0, red: 1, green: 1, blue: 1)
              ],
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
            )),
            height: 80,
            width: 300,
            child: RichText(
              text: TextSpan(
                  text: name, style: TextStyle(fontWeight: FontWeight.bold)),
              textAlign: TextAlign.center,
              textScaler: TextScaler.linear(2.0),
            ),
          ),
        )
      ],
    );
  }
}
