import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AdaptiveNavigation extends StatelessWidget {
  const AdaptiveNavigation({
    super.key,
    required this.child,
    required this.selectedIndex,
  });

  final Widget child;
  final int selectedIndex;
  void onSelected(int index) {
    if (index == 0) {
      Get.toNamed('/');
    } else if (index == 1) {
      Get.toNamed('/playlists');
    } else if (index == 2) {
      Get.toNamed('/artists');
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimens) {
        // Tablet Layout
        if (dimens.maxWidth >= 600) {
          return Scaffold(
            body: Row(
              children: [
                NavigationRail(
                  extended: dimens.maxWidth >= 800,
                  minExtendedWidth: 180,
                  destinations: destinations
                      .map((e) => NavigationRailDestination(
                            icon: e.icon,
                            label: Text(e.label),
                          ))
                      .toList(),
                  selectedIndex: selectedIndex,
                  onDestinationSelected: onSelected,
                  // onDestinationSelected: (int index) {
                  //   setState(() {
                  //   selectedIndex = index;
                  //   });
                  // },
                ),
                Expanded(child: child),
              ],
            ),
          );
        }

        // Mobile Layout
        return Scaffold(
          body: child,
          bottomNavigationBar: NavigationBar(
            destinations: destinations
                .map((e) => NavigationDestination(
                      icon: e.icon,
                      label: e.label,
                    ))
                .toList(),
            selectedIndex: selectedIndex,
            onDestinationSelected: onSelected,
            // onDestinationSelected: (int index) {
            //   setState(() {
            //   selectedIndex = index;
            //   });
            // },
          ),
        );
      },
    );
  }
}

const List<NaviData> destinations = [
  NaviData(
    label: 'Home',
    icon: Icon(Icons.home),
  ),
  NaviData(
    label: 'Playlists',
    icon: Icon(Icons.playlist_add_check),
  ),
  NaviData(
    label: 'Artists',
    icon: Icon(Icons.people),
  ),
];

class NaviData {
  const NaviData({
    required this.label,
    required this.icon,
    this.child,
  });
  final String label;
  final Icon icon;
  final Widget? child;
}
