import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  final _recipientController = TextEditingController();

  final _subjectController = TextEditingController();

  final _bodyController = TextEditingController();

  Future<void> send() async {
    final Email email = Email(
      body: _bodyController.text,
      subject: _subjectController.text,
      recipients: ['helmi.d.hernandez@gmail.com'],
      isHTML: false,
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      print(error);
      platformResponse = error.toString();
    }

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(platformResponse),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Left side
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
            child: Column(
              spacing: 10.0,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextField(
                    controller: _subjectController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Subject',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Right side
        Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Column(spacing: 5.0, children: [
                // Message Box
                TextField(
                  controller: _bodyController,
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Message',
                  ),
                ),
                // Submit Button
                TextButton(
                    onPressed: () async {
                      await send();
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColorLight,
                      // foregroundColor: Colors.pink,
                      textStyle: TextStyle(fontSize: 20.0),
                    ),
                    child: RichText(text: TextSpan(text: "Submit"))),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
