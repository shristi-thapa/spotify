// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sootify/models/music.dart';
import 'package:sootify/screens/home.dart';
import 'package:sootify/screens/search.dart';
import 'package:sootify/screens/yourlibaray.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer _audioPlayer = new AudioPlayer();
  var Tabs = []; //list
  int currentTabIndex = 0;
  bool isPlaying = false;
  Music? music;
  Widget miniPlayer(Music? music, {bool stop = false}) {
    this.music = music;
    if (music == null) {
      return SizedBox();
    }
    if (stop) {
      isPlaying = false;
      _audioPlayer.stop();
    }
    setState(() {});

    Size deviceSize = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(microseconds: 500),
      color: Colors.blueGrey,
      width: deviceSize.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(music.image, fit: BoxFit.cover),
          Text(
            music.name,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          IconButton(
              onPressed: () async {
                isPlaying = !isPlaying;
                if (isPlaying) {
                  await _audioPlayer.play(UrlSource(music.audioURL));
                } else {
                  await _audioPlayer.pause();
                }
                setState(() {});
              },
              icon: isPlaying
                  ? Icon(Icons.pause, color: Colors.white)
                  : Icon(Icons.play_arrow),
              color: Colors.white),
        ],
      ),
    );
  }

  @override
  initState() {
    // TODO: implement initState
    super.initState();
    Tabs = [Home(miniPlayer), Search(), YourLibrary()];
  }

  //ui.desgin code goes inside build
  @override
  Widget build(BuildContext context) {
    print("lets build it");
    return Scaffold(
      body: Tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          miniPlayer(music),
          BottomNavigationBar(
            currentIndex: currentTabIndex,
            onTap: (currentIndex) {
              print("current index is $currentTabIndex");
              currentTabIndex = currentIndex;
              setState(() {
                //re render gareko xa arko page lagna
              });
            },
            selectedLabelStyle: TextStyle(color: Colors.white),
            selectedItemColor: Colors.white,
            backgroundColor: Colors.black45,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.white), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.white),
                  label: 'search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_add_check_outlined,
                      color: Colors.white),
                  label: 'Your Library'),
            ],
          ),
        ],
      ),
    );
  }
}
