import 'dart:io';

import 'package:flutterdokugaku/src/shared/extensions.dart';
import 'package:get/get.dart';

import '../shared/classes/artist.dart';
import '../shared/classes/classes.dart';
import '../shared/providers/artists.dart';
//import 'package:homepageapp/datatype/message.dart';

//import '../datatype/amazon_product_list.dart';
//import 'package:flutter/material.dart';

////드래그하여 컨테이너움직이기 예

// WidthController.to.oneartist.value = sendAllAngletwenty;

// class User {
//   String? name;
//   User({this.name});
// }



// usedthisproject
class WidthController extends GetxController {
  //var widthratio = RxDouble(0.8);
  // var screenwidth = RxDouble(0.0);
  //var widthratio = 0.8.obs;

  //var user = User(name: "cat").obs;   // 사용자 정의 User 클래스


  // playlistgo  2
  var oneplaylist = Playlist(
    id:'',
    title:'',
    description:'',
    songs:_songsthis,
  ).obs;
  
  
  
  


  //  goartist 2  getcontroller
  var oneartist = Artist(
    id: 'jmo',
    name: 'Jessie Morrison',
    image: MyArtistImage(
      image: 'assets/images/artists/woman.jpeg',
      sourceLink: 'https://unsplash.com/photos/w8wpFqiMpW8',
      sourceName: 'Daniel Monteiro',
    ),
    bio:
        'Jessie "JMo" Morrison is an American singer, actress, and dancer. The following year she won over America\'s hearts first appearing in the 2004 movie Unexpected Engagement. Soon after she released her debut album, Hopeful Romantics.',
    updates: [
      'So happy that everyone is loving the new music! It\'s been my pride and joy to work on and I\'m thrilled that you finally get to hear it!',
      'Happy Valentine\'s Day y\'all!!! I love each and every one of you 💋😘',
      '#HappyGalentinesDay!!! Chocolates. Ice Cream. Your favorite rom-com. Let\'s goo!!! 💕✨',
    ],
    events: [
      Event(
          date: '1/20/22',
          title: 'Jessie Morrison: No More Heartbreak Tour',
          location: 'Mountain View, California',
          link: 'Tickets'),
      Event(
          date: '1/22/22',
          title: 'Jessie Morrison: No More Heartbreak Tour',
          location: 'Austin, Texas',
          link: 'Tickets'),
      Event(
          date: '1/23/22',
          title: 'Jessie Morrison: No More Heartbreak Tour',
          location: 'Houston, Texas',
          link: 'Tickets'),
      Event(
          date: '2/8/22',
          title: 'Jessie Morrison: No More Heartbreak Tour',
          location: 'Los Angeles, California',
          link: 'Tickets'),
    ],
    news: [
      News(
        title:
            'Jessie Morrison a 26-stop cross country tour for the first time in 6 years.',
        author: 'By Jacqueline Stewart',
        blurb:
            'Our favorite triple-threat Jessie Morrison is back, this time with a 26 stop tour across the country. She\'ll kick things off in Mountain View on January 20th, 2022 in Mountain View California with more stops being announced over the next few weeks...',
        image: MyArtistImage(
          image: 'assets/images/news/concert.jpeg',
          sourceLink: 'https://unsplash.com/photos/hzgs56Ze49s',
          sourceName: 'Anthony DELANOIX',
        ),
      )
    ],
  ).obs;







  //RxString oneartist = ''.obs;

  var widthratio = 0.6.obs;
  var screenwidth = 0.0.obs;

  var userId = ''.obs;
  var userName = ''.obs;
  var memberName = ''.obs;
  var userphotoUrl = ''.obs;

  var groupName = ''.obs;
  var groupId = ''.obs;
  var getAddress = ''.obs;
  var getcount = 0.obs;
  var getcountString = ''.obs;
  var ownerphotoUrl = ''.obs;
  var pictureId = ''.obs;
  var photoName = 'cancel'.obs;
  var imagePath = 'cancel'.obs;

  // Artist

  // File? countFile = null.obs;

  final cameraFile = Rx<File?>(null);

  //final count2 = File?.obs;

  //final user = User().obs;

  // photoUrl  owner

  // 디폴트값 동경역
  var glovallatitude = 35.6818718.obs;
  var glovallongitude = 139.7658469.obs;
  var m_fAllAngleVelocity = 0.0.obs;

  //배열인경우 변수의 예
  //final List<TaskModel> _taskList = <TaskModel>[].obs;
  //var allCylinderData = <MessageCo>[].obs;
  //var allCylinderData = <AmazonProductList>[].obs;

  var sendAllAngleforty = 0.0.obs;
  var sendAllAngletwenty = 0.0.obs;

  //get allCylinderData => <AmazonProductList>[].obs;
  // Map<String, MessageCo> allCylinderDataMap = {};
  //맵의 리스트는 되는데 맵은 안되더라
  //var allCylinderDataMap = <Map<String, MessageCo>>[].obs;
  //final allCylinderDataMap = <String, AmazonProductList>{}.obs;
  final idAngleMap = <String, String>{}.obs;

  // Map<String, String> idAngleMap = {};
  //yearMonthDayMap[record.yearMonthDay] = record.timestamp; //0307
  //idAngleMap[record.timestamp] = idAngglethis.toString();

  //get taskList => this.allCylinderData;

  //WidthController.to.getwidthratio(0.0, _screenWidth); // 넣고
  //WidthController.to.getwidthratio(0.0,sizeScreen!.width);
  //print(WidthController.to.screenwidth.value);  // 꺼내고
  //groupId = WidthController.to.groupId.value;
  // WidthController.to.groupId.value = groupId;

  static WidthController get to => Get.find();

  void getwidthratio(double dx, double getscreenwidth) {
    widthratio.value = widthratio.value + (dx / 1600);
    if (widthratio.value <= 0.4) {
      widthratio.value = 0.4;
    }
    if (widthratio.value >= 1.0) {
      widthratio.value = 1.0;
    }

    //double kr = getscreenwidth - getscreenwidth * widthratio.value;

    screenwidth.value = getscreenwidth * widthratio.value;

    double kr = getscreenwidth - getscreenwidth * widthratio.value;
    if (kr >= 400) {
      screenwidth.value = getscreenwidth - 410;
    }

    //screenwidth.value = 400;
  } // getwidthratio end

} //WidthController  end





final _songsthis = <RankedSong>[
  RankedSong(
    1,
    'Before You',
    ArtistsProvider.shared.getArtist('jmo')!,
    '2:45'.toDuration(),
    const MyArtistImage(
      image: 'assets/images/albums/artist6-album1.jpg',
      sourceLink: 'https://unsplash.com/photos/cTKGZJTMJQU',
      sourceName: 'Drew Dizzy Graham',
    ),
  ),
  RankedSong(
    2,
    'Hopeful Romantics',
    ArtistsProvider.shared.getArtist('jmo')!,
    '4:44'.toDuration(),
    const MyArtistImage(
      image: 'assets/images/albums/artist6-album2.jpg',
      sourceLink: 'https://unsplash.com/photos/Vya8eGk5Y64',
      sourceName: 'Saffu',
    ),
  ),
  RankedSong(
    3,
    'I Still Believe',
    ArtistsProvider.shared.getArtist('jmo')!,
    '3:07'.toDuration(),
    const MyArtistImage(
      image: 'assets/images/albums/artist6-album3.jpg',
      sourceLink: 'https://unsplash.com/photos/m82uh_vamhg',
      sourceName: 'Vicko Mozara',
    ),
  ),
  RankedSong(
    1,
    'Forever Dancing',
    ArtistsProvider.shared.getArtist('jonjames')!,
    '3:35'.toDuration(),
    const MyArtistImage(
        image: 'assets/images/albums/artist4-album2.jpg',
        sourceLink: 'https://unsplash.com/photos/RQgKM1h2agA',
        sourceName: 'Alexandru Acea'),
  ),
  RankedSong(
    2,
    'So In Love',
    ArtistsProvider.shared.getArtist('jonjames')!,
    '3:52'.toDuration(),
    const MyArtistImage(
        image: 'assets/images/albums/artist4-album1.jpg',
        sourceLink: 'https://unsplash.com/photos/ZWDg7v2FPWE',
        sourceName: 'Jr Korpa'),
  ),
  RankedSong(
    3,
    'Remembering Us',
    ArtistsProvider.shared.getArtist('jonjames')!,
    '3:39'.toDuration(),
    const MyArtistImage(
        image: 'assets/images/albums/artist4-album3.jpg',
        sourceLink: 'https://unsplash.com/photos/rX12B5uX7QM',
        sourceName: 'Stormseeker'),
  ),
  RankedSong(
    1,
    'That Song On The Radio',
    ArtistsProvider.shared.getArtist('lb')!,
    '3:46'.toDuration(),
    const MyArtistImage(
      image: 'assets/images/albums/artist1-album2.jpg',
      sourceLink: 'https://unsplash.com/photos/6etHcucBiRg',
      sourceName: 'Keagan Henman',
    ),
  ),
  RankedSong(
    2,
    'Those Country Hills',
    ArtistsProvider.shared.getArtist('lb')!,
    '3:48'.toDuration(),
    const MyArtistImage(
      image: 'assets/images/albums/artist1-album1.jpg',
      sourceLink: 'https://unsplash.com/photos/f0WoQluZ8XI',
      sourceName: 'Keagan Henman',
    ),
  ),
  RankedSong(
    3,
    'Hard To Say Goodbye',
    ArtistsProvider.shared.getArtist('lb')!,
    '3:48'.toDuration(),
    const MyArtistImage(
      image: 'assets/images/albums/artist1-album1.jpg',
      sourceLink: 'https://unsplash.com/photos/f0WoQluZ8XI',
      sourceName: 'Keagan Henman',
    ),
  ),
  RankedSong(
    4,
    'Being Your Man',
    ArtistsProvider.shared.getArtist('lb')!,
    '3:36'.toDuration(),
    const MyArtistImage(
      image: 'assets/images/albums/artist1-album2.jpg',
      sourceLink: 'https://unsplash.com/photos/6etHcucBiRg',
      sourceName: 'Keagan Henman',
    ),
  ),
  RankedSong(
    5,
    'Typical Friday Night',
    ArtistsProvider.shared.getArtist('lb')!,
    '3:41'.toDuration(),
    const MyArtistImage(
      image: 'assets/images/albums/artist1-album2.jpg',
      sourceLink: 'https://unsplash.com/photos/6etHcucBiRg',
      sourceName: 'Keagan Henman',
    ),
  ),
];










