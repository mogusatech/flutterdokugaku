




/*  삭제예정

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../getcontroller/controllerget.dart';
import '../../../shared/views/article_content.dart';
import '../../../shared/views/image_clipper.dart';
import 'view.dart';

class ArtistScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final colors = Theme.of(context).colorScheme;
        double headerHeight = constraints.maxWidth > 500 ? 300 : 400;
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              leading: BackButton(

                //onPressed: () => GoRouter.of(context).go('/artists'),
                onPressed: (){
                  // goartist 3  goal 2    getback
                  Get.toNamed('/artists');  // ここでは  Get.back();　の代わりに　　　　　国際化
                },

              ),
              title: Text('ARTIST - ${WidthController.to.oneartist.value.name}'),


              bottom: PreferredSize(
                preferredSize: Size.fromHeight(kToolbarHeight + headerHeight),
                child: Column(
                  children: [
                    ArticleContent(
                      child: Builder(
                        builder: (context) {
                          if (constraints.maxWidth > 500) {
                            return SizedBox(
                              height: headerHeight,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClippedImage(
                                    WidthController.to.oneartist.value.image.image,
                                    fit: BoxFit.cover,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),



                                      child: Text(
                                       WidthController.to.oneartist.value.bio,
                                        // style: context.bodyLarge!.copyWith(
                                        //   color: colors.onSurface,
                                        //   fontSize: 16,
                                        // ),
                                        // changetextstyle
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontFamily: 'CormorantGaramond',
                                        ),






                                        textAlign: TextAlign.justify,
                                      ),






                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                          return SizedBox(
                            height: headerHeight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  height: 300,
                                  child: ClippedImage(
                                    WidthController.to.oneartist.value.image.image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Text(
                                      WidthController.to.oneartist.value.bio,
                                      // style: context.bodyLarge!.copyWith(
                                      //   color: colors.onSurface,
                                      //   fontSize: 16,
                                      // ),
                                      // changetextstyle
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontFamily: 'CormorantGaramond',
                                      ),





                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const TabBar(

                        labelColor:Colors.black,


                      tabs: [
                        Tab(text: 'Songs'),
                        Tab(text: 'Events'),
                        Tab(text: 'News'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            body: TabBarView(
              children: [
                SingleChildScrollView(child: ArtistRankedSongs(artist: WidthController.to.oneartist.value)),
                SingleChildScrollView(child: ArtistEvents(artist: WidthController.to.oneartist.value)),
                SingleChildScrollView(child: ArtistNews(artist: WidthController.to.oneartist.value)),
              ],
            ),
          ),
        );
      },
    );
  }
}
*/