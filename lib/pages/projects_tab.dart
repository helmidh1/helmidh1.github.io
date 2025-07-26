import 'package:flutter/material.dart';
import 'package:website_proj_1/pages/custom_classes/project_card.dart';

class ProjectsTab extends StatefulWidget {
  const ProjectsTab({super.key});

  @override
  State<ProjectsTab> createState() => _ProjectsTabState();
}

class _ProjectsTabState extends State<ProjectsTab> {
  OverlayEntry? overlayEntry;

  void _showOverlay(BuildContext context, int index) {
    overlayEntry = _createOverlayEntry(context, index);
    Overlay.of(context).insert(overlayEntry!);
  }

  void _removeOverlay() {
    overlayEntry?.remove();
    overlayEntry = null;
  }

  OverlayEntry _createOverlayEntry(BuildContext context, int index) {
    // Properties of the pages that appear when clicking on the project button.
    return OverlayEntry(builder: (context) {
      return Stack(
        children: <Widget>[
          // The widget below is necessary to remove overlay when clicking off it.
          Positioned.fill(
              child: GestureDetector(
            onTap: (_removeOverlay),
            child: Container(
              color: Colors.transparent,
            ),
          )),
          // Here is where the overlay with info goes.
          Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: AspectRatio(
                aspectRatio: 1,
                child: AnimatedOpacity(
                  opacity: projectList[index].getObserved() ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 250),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 218, 218, 218),
                        borderRadius: BorderRadius.all(Radius.circular(12.0))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: projectList[index].getBoxDecoration(),
                            child: RichText(
                              text:
                                  TextSpan(text: projectList[index].getName()),
                              textAlign: TextAlign.center,
                              textScaler: TextScaler.linear(6.0),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                text: projectList[index].getDescription(),
                              ),
                              textAlign: TextAlign.center,
                              textScaler: TextScaler.linear(4.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      );
    });
  }

  // Properties of the project buttons.
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    final r = (primaryColor.r * 255).round();
    final g = (primaryColor.g * 255).round();
    final b = (primaryColor.b * 255).round();

    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: projectList.length,
            (BuildContext context, int index) {
      return Padding(
        padding: EdgeInsets.all(15),
        child: GestureDetector(
          onTap: () {
            if (overlayEntry == null) {
              _showOverlay(context, index);
            } else {
              _removeOverlay();
            }
          },
          child: MouseRegion(
            onEnter: (event) => {
              setState(() {
                projectList[index].setObserved();
              })
            },
            onExit: (event) => {
              setState(() {
                projectList[index].setObserved();
              })
            },
            child: SizedBox(
              height: 250,
              child: AnimatedScale(
                scale: projectList[index].getObserved() ? 0.8 : 1,
                duration: Duration(milliseconds: 250),
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 250),
                  decoration: projectList[index].getBoxDecoration(),
                  foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: projectList[index].getObserved()
                        ? Color.fromARGB(150, r, g, b)
                        : null,
                  ),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: projectList[index].getName(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      textScaler: TextScaler.linear(4.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }));
  }
}
