import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class SkillsTab extends StatefulWidget {
  const SkillsTab({super.key});

  @override
  State<SkillsTab> createState() => _SkillsTabState();
}

class _SkillsTabState extends State<SkillsTab> {
  final List<Skill> skillList = [
    Skill('Python', 'assets/skills/python.png'),
    Skill('Java', 'assets/skills/java.png'),
    Skill('C#', 'assets/skills/c-sharp.png'),
    Skill('C++', 'assets/skills/c-.png'),
    Skill('Git', 'assets/skills/git_icon.png'),
    Skill('HTML', 'assets/skills/html.png'),
    Skill('CSS', 'assets/skills/css.png'),
    Skill('PostgreSQL', 'assets/skills/postgre.png'),
    Skill('SQL', 'assets/skills/sql_icon.png'),
    Skill('Visual Studio', 'assets/skills/visual-basic.png'),
    Skill('Unity', 'assets/skills/unity.png'),
    Skill('Ren\'Py', 'assets/skills/renpy.png'),
    Skill('Flutter', 'assets/skills/flutter.png'),
    Skill('Dart', 'assets/skills/dart.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.all(20.0),
      sliver: SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1,
            crossAxisCount: 4,
            crossAxisSpacing: 50,
            mainAxisSpacing: 50,
          ),
          delegate: SliverChildBuilderDelegate(childCount: skillList.length,
              (BuildContext context, int index) {
            return AnimationConfiguration.staggeredGrid(
              position: index,
              columnCount: 4,
              child: SlideAnimation(
                delay: Duration(milliseconds: 200),
                duration: Duration(milliseconds: 500),
                child: FadeInAnimation(
                  delay: Duration(milliseconds: 200),
                  duration: Duration(milliseconds: 500),
                  child: Container(
                      alignment: Alignment.center,
                      child: MouseRegion(
                        onEnter: (event) => {
                          setState(() {
                            skillList[index].setObserved();
                          })
                        },
                        onExit: (event) => {
                          setState(() {
                            skillList[index].setObserved();
                          })
                        },
                        child: Stack(
                            alignment: Alignment(0, 2.75),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            children: <Widget>[
                              Image.asset(skillList[index].imagePath),
                              AnimatedPositioned(
                                curve: Curves.easeIn,
                                duration: Duration(milliseconds: 300),
                                bottom:
                                    skillList[index].getObserved() ? 0 : -100,
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                    colors: [
                                      const Color.fromARGB(255, 80, 80, 80),
                                      const Color.from(
                                          alpha: 0, red: 1, green: 1, blue: 1)
                                    ],
                                    begin: Alignment(0, -1),
                                    end: Alignment(0, 1),
                                  )),
                                  height: 80,
                                  width: 300,
                                  child: RichText(
                                    text: TextSpan(
                                        text: skillList[index].name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    textAlign: TextAlign.center,
                                    textScaler: TextScaler.linear(2.0),
                                  ),
                                ),
                              ),
                            ]),
                      )),
                ),
              ),
            );
          })),
    );
  }
}

class Skill {
  final String name;
  final String imagePath;
  late bool observed;

  Skill(this.name, this.imagePath) {
    observed = false;
  }

  bool getObserved() {
    return observed;
  }

  void setObserved() {
    observed = !observed;
  }
}
