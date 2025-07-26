import 'package:flutter/material.dart';
import 'package:website_proj_1/pages/contacts/emails.dart';
import 'package:website_proj_1/pages/contacts/header.dart';
import 'package:website_proj_1/pages/contacts/messages.dart';
import 'package:website_proj_1/pages/contacts/socials.dart';

class ContactsTab extends StatefulWidget {
  const ContactsTab({super.key});

  @override
  State<ContactsTab> createState() => _ContactsTabState();
}

class _ContactsTabState extends State<ContactsTab> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        // Header(),
        // Messages(),
        // Socials(),
        Expanded(
            child: Container(
          decoration:
              BoxDecoration(color: Theme.of(context).secondaryHeaderColor),
          child: Column(
            children: [
              Header(),
              Align(alignment: Alignment.center, child: ContactMessage()),
              Row(children: [
                Expanded(flex: 2, child: Emails()),
                Expanded(
                    flex: 1,
                    child:
                        Align(alignment: Alignment.center, child: Socials())),
              ])
            ],
          ),
        ))
      ]),
    );
  }
}

class ContactMessage extends StatelessWidget {
  const ContactMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Feel free to send me a message to one of my emails or check out my socials.",
      softWrap: true,
      textAlign: TextAlign.center,
      textScaler: TextScaler.linear(2.0),
    );
  }
}
