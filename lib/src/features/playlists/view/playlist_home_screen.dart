import 'package:flutter/material.dart';
import '../../../shared/classes/classes.dart';
import '../../../shared/providers/providers.dart';
import '../../../shared/views/views.dart';

class PlaylistHomeScreen extends StatelessWidget {
  const PlaylistHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PlaylistsProvider playlistProvider = PlaylistsProvider();
    List<Playlist> playlists = playlistProvider.playlists;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          primary: false,
          appBar: AppBar(
            title: const Text('PLAYLISTS'),
            toolbarHeight: kToolbarHeight * 2,
          ),
          body: Column(
            children: [


              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(15),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: (constraints.maxWidth ~/ 175).toInt(),


                    //RenderFlex Error で　修正した所　　国際化
                    childAspectRatio: 0.60,   // childAspectRatio: 0.70,   0.6으로하니 에러없어짐  높이의 제약때문인데 높이를 조절함
                    //mainAxisExtent: 256,

                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: playlists.length,

                  itemBuilder: (context, index) {

                    final playlist = playlists[index];

                    return GestureDetector(
                      child: ImageTile(
                        image: playlist.cover.image,
                        title: playlist.title,
                        subtitle: playlist.description,
                      ),
                      onTap: (){
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
