import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:website_proj_1/pages/background_tab.dart';
import 'package:website_proj_1/pages/custom_classes/custom_navbar.dart';
import 'package:website_proj_1/pages/introduction_tab.dart';
import 'package:website_proj_1/pages/projects_tab.dart';
import 'package:website_proj_1/pages/skills_tab.dart';
import 'package:website_proj_1/pages/contact_tab.dart';

class MyHomePageState extends StatefulWidget {
  const MyHomePageState({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 25, 189, 218))),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const MyHomePageState(),
    );
  }

  @override
  State<MyHomePageState> createState() => _MyHomePageStateState();
}

class _MyHomePageStateState extends State<MyHomePageState> {
  // navbarKeys will be for navbar butttons going to
  // sections of this page, not external links.
  final List<GlobalKey> navbarKeys = List.generate(5, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        pinned: true,
        expandedHeight: 150,
        toolbarHeight: 50,
        flexibleSpace: FlexibleSpaceBar(
          title: Center(child: Text("Helmi Hernandez - Portfolio")),
        ),
        bottom: CustomNavBar(
          onNavMenuTap: (int navIndex) {
            scrollToSection(navIndex);
          },
        ),
      ),
      IntroductionTab(
        key: navbarKeys[0],
      ),
      BackgroundTab(
        key: navbarKeys[1],
      ),
      SkillsTab(
        key: navbarKeys[2],
      ),
      ProjectsTab(
        key: navbarKeys[3],
      ),
      ContactsTab(
        key: navbarKeys[4],
      ),
    ]));
  }

  void scrollToSection(int navIndex) {
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
