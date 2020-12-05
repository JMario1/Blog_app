//import 'package:flutter/foundation.dart';
import 'package:Blog_app/Screens/detailpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/index.jpeg"),
            ),
            IconButton(icon: Icon(Icons.more_horiz), onPressed: null)
          ]),
          SizedBox(
            height: 20,
          ),
          FeaturePost(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              FlatButton(
                  onPressed: () => print("hi"),
                  child: Text(
                    "Show all",
                    style: TextStyle(fontSize: 16, color: Colors.orangeAccent),
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: PopularPost())
        ]),
      ),
    );
  }
}

class FeaturePost extends StatefulWidget {
  @override
  _FeaturePostState createState() => _FeaturePostState();
}

class _FeaturePostState extends State<FeaturePost> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 15),
          height: 170,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage(
                  "images/pic3.jpg",
                ),
                fit: BoxFit.cover,
              )),
        ),
        ListTile(
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => DetailPage())),
          contentPadding: EdgeInsets.zero,
          title: Text(
            "How to run a More Effective Meeting",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Icon(
                  Feather.clock,
                  size: 15,
                ),
                Text("  50 mins ago"),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Feather.message_circle,
                  size: 15,
                ),
                Text("  60 Comments"),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class PopularPost extends StatefulWidget {
  @override
  _PopularPostState createState() => _PopularPostState();
}

class _PopularPostState extends State<PopularPost> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/pic2.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(8)),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          "Design",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      FlatButton(
                        padding: EdgeInsets.zero,
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailPage())),
                        child: Text(
                          "Top 10 techniques to get rid of clutter in designs",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Feather.clock,
                            size: 10,
                          ),
                          Text("  50 mins ago"),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Feather.message_circle,
                            size: 10,
                          ),
                          Text("  60 Comments"),
                        ],
                      ),
                      SizedBox(
                        height: 17,
                      )
                    ],
                  ),
                ),
              ],
            ));
  }
}
