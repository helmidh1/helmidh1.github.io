import 'package:flutter/material.dart';

class IntroductionTab extends StatelessWidget {
  const IntroductionTab({super.key});

  final hPadding = 20.0;
  final vPadding = 300.0;

  @override
  Widget build(BuildContext context) {
    // Having difficulty just trying to make the background
    // a solid, transparent color. Doing this workaround.
    final primaryColor = Theme.of(context).colorScheme.primary;
    final r = (primaryColor.r * 255).round();
    final g = (primaryColor.g * 255).round();
    final b = (primaryColor.b * 255).round();

    return SliverToBoxAdapter(
      // ShaderMask is to add LinearGradient to the Container.
      child: ShaderMask(
        blendMode: BlendMode.dstIn,
        shaderCallback: (bounds) {
          return LinearGradient(
            begin: Alignment(0.0, 0.7),
            end: Alignment.bottomCenter,
            colors: <Color>[Colors.black, Colors.transparent],
          ).createShader(bounds);
        },
        child: Container(
          decoration: BoxDecoration(
            // color: Color.fromARGB(100, r, g, b),
            image: const DecorationImage(
                image: AssetImage('assets/backgrounds/turquoise_1.jpg'),
                fit: BoxFit.fill),
          ),
          padding: EdgeInsets.fromLTRB(hPadding, vPadding, hPadding, vPadding),
          child: Center(
            child: Column(
              children: [
                SelectableText.rich(
                  TextSpan(
                      text: "Helmi Hernandez",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  textScaler: TextScaler.linear(6.0),
                ),
                SelectableText.rich(
                  TextSpan(
                    text:
                        "\nI am currently a computer science student at Nova Southeastern University (NSU) and USMC veteran.",
                  ),
                  textAlign: TextAlign.center,
                  textScaler: TextScaler.linear(3.0),
                  // contextMenuBuilder: (context, editableTextState){

                  // },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
