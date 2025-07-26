import 'package:flutter/material.dart';

class BackgroundTab extends StatelessWidget {
  const BackgroundTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.tightForFinite(
              height: 500,
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/1920/1080'),
                    opacity: 0.5,
                    fit: BoxFit.fill)),
            padding: EdgeInsets.all(20),
            child: RichText(
              text: TextSpan(text: "Served in the Marine Corps\n2015-2020."),
              softWrap: true,
              textAlign: TextAlign.center,
              textScaler: TextScaler.linear(4.0),
            ),
          ),
          Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.tightForFinite(
              height: 500,
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/1920/1080'),
                    opacity: 0.5,
                    fit: BoxFit.fill)),
            padding: EdgeInsets.all(20),
            child: RichText(
              text: TextSpan(
                  text:
                      "Studied Game Development at Miami Dade College\n2020-2022."),
              softWrap: true,
              textAlign: TextAlign.center,
              textScaler: TextScaler.linear(4.0),
            ),
          ),
          Container(
            alignment: Alignment.center,
            constraints: BoxConstraints.tightForFinite(
              height: 500,
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://picsum.photos/1920/1080'),
                    opacity: 0.5,
                    fit: BoxFit.fill)),
            padding: EdgeInsets.all(20),
            child: RichText(
              text: TextSpan(
                  text:
                      "Attending Nova Southeastern University (NSU).\n2025-Present\nExpected Graduation: Dec 2027"),
              softWrap: true,
              textAlign: TextAlign.center,
              textScaler: TextScaler.linear(4.0),
            ),
          ),
        ],
      ),
    );

    // @override
    // Widget build(BuildContext context) {
    //   return Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Container(
    //           decoration: BoxDecoration(
    //               image: DecorationImage(
    //                   image: NetworkImage('https://picsum.photos/1920/1080'))),
    //           child: RichText(
    //               text: TextSpan(
    //             text: "Served in the Marine Corps\n2015-2020.",
    //           )),
    //         ),
    //         RichText(
    //           text: TextSpan(
    //             text: "Served in the Marine Corps\n2015-2020.",
    //             children: <TextSpan>[
    //               TextSpan(
    //                   text:
    //                       "\n\nStudied Game Development at Miami Dade College\n2020-2022."),
    //               TextSpan(
    //                 text:
    //                     "\n\nAttending Nova Southeastern University (NSU).\n2025-Present\nExpected Graduation: Dec 2027",
    //               ),
    //             ],
    //           ),
    //           softWrap: true,
    //           textAlign: TextAlign.center,
    //           textScaler: TextScaler.linear(4.0),
    //         ),
    //       ],
    //     ),
    //   );
  }
}
