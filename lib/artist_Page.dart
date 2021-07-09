import 'package:flutter/material.dart';
import 'package:spotify_ui/bottom_navigation_bar_Widget.dart';
import 'package:spotify_ui/persistentFooterButtonWidget.dart';

class ArtistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      persistentFooterButtons: [
        PersistentFooterWidget(),
      ],
      bottomNavigationBar: BottomNavigationBarWidget(),
      body: Column(
        children: [
          _Header(),
          MidWidget(),
          Expanded(child: _TracksWidget()),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xffea3933),
            const Color(0xffea3933),
            const Color(0xff121212),
          ],
          stops: [0.7, 0.3, 1.0],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.5),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 220.0,
                width: 360.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 60.0,
                      spreadRadius: 10.0,
                    ),
                  ],
                ),
                child: Image.asset('assets/bull.png'),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 2),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 32.0,
                        )),
                    Spacer(),
                    Container(
                      height: 28.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Center(
                          child: Text("Follow",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 11))),
                    ),
                    Icon(Icons.more_vert_outlined,
                        color: Colors.white, size: 32.0)
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: _AlbumInfo(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AlbumInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 55.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Dance Gavin Dance",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}

class MidWidget extends StatelessWidget {
  const MidWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "10232 MONTHLY LISTENERS",
            style: TextStyle(color: Colors.grey, fontSize: 10),
          ),
          const SizedBox(height: 25.0),
          Container(
              height: 46,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Center(
                child: Text(
                  "SHUFFLE PLAY",
                  style: TextStyle(color: Colors.white),
                ),
              )),
          const SizedBox(height: 30.0),
        ],
      ),
    );
  }
}

class _TracksWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Popular",
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15.0),
          _PopularTrackWidget(
            title: "Prisoner",
            colors: Colors.green,
            artist: "Kendrick",
            index: "1",
          ),
          _PopularTrackWidget(
            title: "We Own the Night",
            artist: "Purrple Cat",
            index: "2",
          ),
          _PopularTrackWidget(
            title: "Head Hunter",
            artist: "Blumen",
            index: "3",
          ),
          _PopularTrackWidget(
            title: "Son of Robot",
            artist: "WYS",
            index: "4",
          ),
          _PopularTrackWidget(
            title: "Care",
            artist: "Purrple Cat",
            index: "5",
          ),
          const SizedBox(height: 15.0),
          Text(
            "Artist's Pick",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15.0),
          _ArtistsPickWidget(
            title: "Strawberry's Wake",
            artist: "Single New Release",
            cover: "assets/a.png",
          ),
          const SizedBox(height: 15.0),
          Text(
            "Popular releases",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15.0),
          _PopularReleaseWidget(
            title: "Strawberry's Wake",
            artist: "Latest release Single",
            cover: "assets/b.png",
          ),
          _PopularReleaseWidget(
            title: "Artificial Selection",
            artist: "2018 Album",
            cover: "assets/Members.png",
          ),
          _PopularReleaseWidget(
            title: "Mothership",
            artist: "2018 Album",
            cover: "assets/gavin.png",
          ),
          _PopularReleaseWidget(
            title: "Instant Gratification",
            artist: "2015 Album",
            cover: "assets/jcole.jpg",
          ),
          const SizedBox(height: 15.0),
          Container(
              height: 35,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Center(
                child: Text(
                  "SEE DISCOGRAPHY",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              )),
          const SizedBox(height: 15.0),
        ],
      ),
    );
  }
}

class _PopularTrackWidget extends StatelessWidget {
  final String title;
  final String artist;
  final String index;
  final Color colors;

  const _PopularTrackWidget({
    this.title,
    this.artist,
    this.index,
    this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: SizedBox(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(index,
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                  const SizedBox(width: 16.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: colors ?? Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        artist,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_vert_outlined, color: Colors.white, size: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}

class _PopularReleaseWidget extends StatelessWidget {
  final String title;
  final String artist;
  final String cover;

  const _PopularReleaseWidget({
    this.title,
    this.artist,
    this.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: SizedBox(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(cover, height: 52.0, width: 52.0),
                  const SizedBox(width: 16.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        artist,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ArtistsPickWidget extends StatelessWidget {
  final String title;
  final String artist;
  final String cover;

  const _ArtistsPickWidget({
    this.title,
    this.artist,
    this.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: SizedBox(
        // height: 60.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(cover, height: 72.0, width: 72.0),
                    const SizedBox(width: 16.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 30,
                            width: 165,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "NEW SONG out now!",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 11),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                        SizedBox(height: 5),
                        Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          artist,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
