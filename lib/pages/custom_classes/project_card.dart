import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:website_proj_1/pages/custom_classes/custom_colors.dart';

class ProjectCard {
  final String name;
  final String description;
  final AssetImage assetImage;
  final BoxDecoration boxDecoration;
  late bool observed;

  ProjectCard(
      this.name, this.description, this.assetImage, this.boxDecoration) {
    observed = false;
  }

  bool getObserved() {
    return observed;
  }

  String getName() {
    return name;
  }

  AssetImage getAssetImage() {
    return assetImage;
  }

  String getDescription() {
    return description;
  }

  BoxDecoration getBoxDecoration() {
    return boxDecoration;
  }

  void setObserved() {
    observed = !observed;
  }
}

final List<ProjectCard> projectList = [
  ProjectCard(
    'Flutter/Dart - Web Development',
    "This website! I made it website not only to showcase work, but also to learn how to use Flutter and Dart.",
    AssetImage('assets/backgrounds/turquoise_1.jpg'),
    BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      gradient: LinearGradient(
        colors: <Color>[
          CustomColors(alpha: 150).getFlutter_1(),
          CustomColors(alpha: 150).getFlutter_2(),
          CustomColors(alpha: 150).getFlutter_3(),
        ],
        begin: Alignment.topLeft,
        // end: Alignment(-0.6, 0.0),
        end: Alignment.bottomRight,
        // tileMode: TileMode.repeated,
        stops: [0.0, 0.2, 0.8],
      ),
    ),
  ),
  ProjectCard(
    'Unity Projects',
    "A custom character controller made using the Unity game engine. It implements a state machine, verlet integration, and walking on surfaces.",
    AssetImage('assets/backgrounds/blue_1.jpg'),
    BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        image: DecorationImage(
          alignment: Alignment(0.0, -0.6),
          image: AssetImage('assets/backgrounds/unity_pic_1.png'),
          fit: BoxFit.fitWidth,
          opacity: 0.5,
        )),
  ),
  ProjectCard(
    'Ren\'Py Games',
    "Some games I made using the Ren'Py game engine, which focuses on creating visual novels.",
    AssetImage('assets/backgrounds/turquoise_1.jpg'),
    BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      gradient: LinearGradient(
        colors: <Color>[
          CustomColors(alpha: 150).getRenpy_1(),
          CustomColors(alpha: 150).getRenpy_2(),
          CustomColors(alpha: 150).getRenpy_3(),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
  ),
];
