import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomNavBar({
    super.key,
    required this.onNavMenuTap,
  });
  final Function(int) onNavMenuTap;

  @override
  Size get preferredSize => Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    var tabName = [
      "Introduction",
      "Background",
      "Skills",
      "Projects",
      "Contacts",
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int index = 0; index < 5; index++)
          Expanded(
            child: TextButton(
                onPressed: () {
                  onNavMenuTap(index);
                },
                child: Text(tabName[index])),
          ),
      ],
    );
  }
}
