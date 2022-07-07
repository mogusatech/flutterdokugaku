import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../features/artists/view/artists_screen.dart';
import '../features/home/home.dart';
import '../features/playlists/playlists.dart';
import '../features/playlists/view/playlist_home_screen.dart';
import '../getcontroller/controllerget.dart';
import 'adaptive_navigation.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter.ski',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primaryColor: Colors.black,
        primarySwatch: Colors.blue,
      ),
      initialBinding: BindingsBuilder(() {
        Get.put(WidthController());
      }),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => AdaptiveNavigation(child: HomeScreen(),selectedIndex:0)),

        GetPage(
            name: "/playlists",
            page: () => AdaptiveNavigation(child: PlaylistHomeScreen(),selectedIndex:1)),

        // GetPage(
        //     name: "/goplaylist",
        //     page: () => AdaptiveNavigation(child: PlaylistScreen(),selectedIndex:1)),

        GetPage(
            name: "/artists",
            page: () => AdaptiveNavigation(child: ArtistsScreen(),selectedIndex:2)),

        // GetPage(
        //     name: "/goartist",
        //     page: () => AdaptiveNavigation(child: ArtistScreen(),selectedIndex:2)),

      ],
    );
  }
}
