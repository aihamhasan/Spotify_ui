import 'package:flutter/material.dart';

class PersistentFooterWidget extends StatelessWidget {
  const PersistentFooterWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF2d2e30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xFF313132),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Image.asset(
              "assets/a.png",
              filterQuality: FilterQuality.high,
            ),
          ),
          SizedBox(width: 13),
          Container(
              child: Text("Prisoner - Dance Gavin Dance",
                  style: TextStyle(color: Colors.white, fontSize: 12))),
          IconButton(
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.white,
            ),
            onPressed: null,
          ),
          IconButton(
            iconSize: 30,
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
