import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spotify_ui/artist_Page.dart';
import 'package:spotify_ui/bottom_navigation_bar_Widget.dart';
import 'package:spotify_ui/persistentFooterButtonWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        PersistentFooterWidget(),
      ],
      backgroundColor: Color(0xFF191919),
      bottomNavigationBar: BottomNavigationBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xff564743),
                    const Color(0xff473b38),
                    const Color(0xFF1d1816),
                  ],
                  stops: [0.1, 0.3, 1.0],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 38, 8.0, 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "Good Evening",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AlbumMini(
                          image: 'assets/Members.png',
                          text: "Members",
                        ),
                        const SizedBox(width: 6.0),
                        AlbumMini(
                          image: 'assets/Coastin.png',
                          text: "Ben\nBohmer",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AlbumMini(
                          image: 'assets/jcole.jpg',
                          text: "J. Cole",
                        ),
                        const SizedBox(width: 6.0),
                        AlbumMini(
                          image: 'assets/lofi.jpeg',
                          text: "Lo-Fi Beats",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            RecentlyPlayedWidget(),
            const SizedBox(height: 24.0),
            RecommendedWidget(),
            const SizedBox(height: 24.0),
            NewReleaseWidget(),
            const SizedBox(height: 24.0),
            NewReleaseWidget(),
          ],
        ),
      ),
    );
  }
}

class RecentlyPlayedWidget extends StatelessWidget {
  const RecentlyPlayedWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            "Recently Played",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 24.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 16.0),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => ArtistPage()));
                    },
                    child: Container(
                      height: 105,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(90),
                        child: Image.asset(
                          'assets/gavin.png',
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Dance Gavin Dance",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(width: 16.0),
              AlbumSquareSmallWidget(
                title: "Carnival",
                cover: 'assets/b.png',
              ),
              const SizedBox(width: 16.0),
              AlbumSquareSmallWidget(
                title: "Kendrick Lamar",
                cover: 'assets/a.png',
              ),
              const SizedBox(width: 16.0),
              AlbumSquareSmallWidget(
                title: "Coastin",
                cover: 'assets/Coastin.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NewReleaseWidget extends StatelessWidget {
  const NewReleaseWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            "New Releases for you",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 24.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 16.0),
              AlbumSquareWidget(
                title: "Coastin",
                artist: "Album Afterburner",
                cover: 'assets/Coastin.png',
              ),
              const SizedBox(width: 16.0),
              AlbumSquareWidget(
                title: "Tomorrowland",
                artist: "Album Afterburner",
                cover: 'assets/kendrick.jpg',
              ),
              const SizedBox(width: 16.0),
              AlbumSquareWidget(
                title: "After Earth",
                artist: "Album Afterburner",
                cover: 'assets/2014.jpg',
              ),
              const SizedBox(width: 16.0),
              AlbumSquareWidget(
                title: "Cercle",
                artist: "Album Afterburner",
                cover: 'assets/jcole.jpg',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            "Recommended for you",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 24.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 16.0),
              AlbumSquareWidget(
                title: "Top 50 Global",
                artist: "",
                cover: 'assets/top50global.PNG',
              ),
              const SizedBox(width: 16.0),
              AlbumSquareWidget(
                title: "Summer Rewind",
                artist: "",
                cover: 'assets/summerRewind.PNG',
              ),
              const SizedBox(width: 16.0),
              AlbumSquareWidget(
                title: "Top 50 Italy",
                artist: "",
                cover: 'assets/top50italy.PNG',
              ),
              const SizedBox(width: 16.0),
              AlbumSquareWidget(
                title: "Summer Rewind",
                artist: "",
                cover: 'assets/summerRewind.PNG',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AlbumSquareWidget extends StatelessWidget {
  final String title;
  final String cover;
  final String artist;
  const AlbumSquareWidget({Key key, this.title, this.cover, this.artist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => ArtistPage()));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: 120,
            child: Image.asset(
              cover,
              filterQuality: FilterQuality.high,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          Text(
            artist,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 8,
            ),
          ),
        ],
      ),
    );
  }
}

class AlbumSquareSmallWidget extends StatelessWidget {
  final String title;
  final String cover;
  const AlbumSquareSmallWidget({Key key, this.title, this.cover})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => ArtistPage()));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 95,
            width: 95,
            child: Image.asset(
              cover,
              filterQuality: FilterQuality.high,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class AlbumMini extends StatelessWidget {
  final String image;
  final String text;

  const AlbumMini({Key key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: 175,
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xFF313132),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                child: Image.asset(
                  image,
                  filterQuality: FilterQuality.high,
                ),
              ),
              const SizedBox(width: 8.0),
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
