import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Search extends StatefulHookWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 3),
                      borderRadius: BorderRadius.circular(16)),
                  suffixIcon:
                      IconButton(icon: Icon(Feather.search), onPressed: null)),
            ),
          ],
        ),
      ),
    );
  }
}
