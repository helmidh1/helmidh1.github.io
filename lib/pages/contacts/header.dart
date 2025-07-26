import 'package:flutter/material.dart';
import 'package:website_proj_1/pages/contacts/emails.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Contact Me",
                  textScaler: TextScaler.linear(4.0),
                  style: TextStyle(
                      color: Colors.cyan, fontWeight: FontWeight.bold),
                ))),
      ],
    );
  }
}
