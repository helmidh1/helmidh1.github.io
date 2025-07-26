// import 'dart:math';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UnityControllerTab extends StatefulWidget {
  const UnityControllerTab({super.key});

  @override
  State<UnityControllerTab> createState() => _UnityControllerTabState();
}

class _UnityControllerTabState extends State<UnityControllerTab> {
  bool isHoveringLeft = false;
  bool isHoveringRight = false;

  @override
  Widget build(BuildContext context) {
    final Uri unityUri = Uri(
        scheme: 'https',
        host: 'play.unity.com',
        path: '/en/games/6aad59ab-da3d-49ff-a342-e0009a17262c/movproject1');
    const colorList1 = [
      Colors.lightBlueAccent,
      Colors.white,
    ];
    const colorList2 = [
      Colors.white,
      Colors.greenAccent,
    ];

    return Row(
      children: <Widget>[
        Expanded(
          child: MouseRegion(
            cursor: SystemMouseCursors.basic,
            onEnter: (event) => {
              setState(() {
                isHoveringLeft = !isHoveringLeft;
              })
            },
            onExit: (event) => {
              setState(() {
                isHoveringLeft = !isHoveringLeft;
              })
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 150),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: colorList1,
                end:
                    !isHoveringLeft ? Alignment(0.2, 0.2) : Alignment(0.8, 0.2),
              )),
              width: isHoveringLeft
                  ? MediaQuery.sizeOf(context).width + 300
                  : MediaQuery.sizeOf(context).width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Custom Character Controller",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    textAlign: TextAlign.center,
                    textScaler: TextScaler.linear(2.5),
                  ),
                  RichText(
                    text: TextSpan(
                      text:
                          "Walk on Walls\nCamera Relative Movement\nVerlet Jumping\nState Machine System",
                    ),
                    // textAlign: TextAlign.center,
                    textScaler: TextScaler.linear(1.3),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    """
                    I have always been fascinated by the climbing in
                    Spider-Man 2 for the PS2.

                    So, because I have familiarity with the Unity engine,
                    I made a prototype character controller.
                    
                    Honestly, it's pretty janky right now, but it's a passion project
                    I work on when I have the time.

                    What I'm most proud of with this project is that I managed 
                    """,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: MouseRegion(
            cursor: SystemMouseCursors.basic,
            onEnter: (event) => {
              setState(() {
                isHoveringRight = !isHoveringRight;
              })
            },
            onExit: (event) => {
              setState(() {
                isHoveringRight = !isHoveringRight;
              })
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 150),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: colorList2,
                begin: !isHoveringRight
                    ? Alignment(0.2, -0.2)
                    : Alignment(-0.2, -0.2),
              )),
              width: isHoveringRight
                  ? MediaQuery.sizeOf(context).width + 300
                  : MediaQuery.sizeOf(context).width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.unity),
                    iconSize: 100.0,
                    onPressed: () async {
                      await launchUrl(unityUri);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// class CustomAnimatedContainer extends AnimatedContainer {
//   CustomAnimatedContainer({super.key, required super.duration});

//   @override
//   Duration duration(int num){
//     duration.s
//   }

//   @override
//   // TODO: implement duration
//   Duration get duration => {super.duration};
// }
