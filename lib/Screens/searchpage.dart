import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: ListView(
        children: [
          TextField(
            decoration: InputDecoration(
                suffixIcon:
                    IconButton(icon: Icon(Feather.search), onPressed: null)),
          ),
        ],
      ),
    );
  }
}
