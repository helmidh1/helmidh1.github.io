import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Socials extends StatefulWidget {
  const Socials({super.key});

  @override
  State<Socials> createState() => _SocialsState();
}

class _SocialsState extends State<Socials> {
  final Uri linkedInUri = Uri(
      scheme: 'https', host: 'linkedin.com', path: '/in/helmi-d-hernandez/');
  final Uri githubUri =
      Uri(scheme: 'https', host: 'github.com', path: '/helmidh1');

  final double iconSize = 50.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.linkedin,
            color: Color.fromARGB(255, 10, 102, 194),
            size: iconSize,
          ),
          onPressed: () async {
            await launchUrl(linkedInUri);
          },
        ),
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.github,
            color: Color.fromARGB(255, 129, 34, 144),
            size: iconSize,
          ),
          onPressed: () async {
            await launchUrl(githubUri);
          },
        ),
      ],
    );
  }
}
