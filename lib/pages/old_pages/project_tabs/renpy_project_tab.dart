import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RenpyProjectTab extends StatelessWidget {
  const RenpyProjectTab({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri renpyProjectUri =
        Uri(scheme: 'https', host: 'alerio.itch.io', path: '/fiera-and-claude');

    return CustomPaint(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Here's a short game I made using Ren'Py"),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.renren),
              onPressed: () async {
                await launchUrl(renpyProjectUri);
              },
            ),
          ],
        ),
      ),
    );
  }
}
