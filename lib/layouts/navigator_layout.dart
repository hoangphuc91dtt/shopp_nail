import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme/colors_theme.dart';

class NavigatorLayout extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTapNavigatorBar;
  const NavigatorLayout({Key? key, required this.currentIndex, this.onTapNavigatorBar});

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;

    return Container(
      height: mq.height * 0.07,
      color: Colors.white,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: ColorsTheme.blueDark,
        selectedItemColor: ColorsTheme.yellow,
        unselectedItemColor: ColorsTheme.primary,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: onTapNavigatorBar,
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.house,
            ),
            label: '',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.boxArchive,
            ),
            label: '',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.gear,
            ),
            label: '',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.solidUser,
            ),
            label: '',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
