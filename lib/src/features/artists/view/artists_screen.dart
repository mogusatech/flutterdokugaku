import 'dart:math';
import 'package:flutter/material.dart';
import './artist_card.dart';
import '../../../shared/providers/artists.dart';


class ArtistsScreen extends StatelessWidget {
  const ArtistsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final artistsProvider = ArtistsProvider();
    final artists = artistsProvider.artists;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        primary: false,
        appBar: AppBar(
          title: const Text('ARTISTS'),
          toolbarHeight: kToolbarHeight * 2,
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(15),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: max(1, (constraints.maxWidth ~/ 400).toInt()),



            //RenderFlex Error で　修正した所  国際化
            childAspectRatio: 2.5,
            // childAspectRatio: MediaQuery.of(context).size.height /
            //     (MediaQuery.of(context).size.width ),



            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: artists.length,
          itemBuilder: (context, index) {
            final artist = artists[index];
            return GestureDetector(
              child: ArtistCard(
                artist: artist,
              ),



              onTap:() {

              },



            );
          },
        ),
      );
    });
  }
}
