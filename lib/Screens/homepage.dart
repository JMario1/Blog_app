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
          Row(children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/index.jpeg"),
            )
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
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              FlatButton(onPressed: () => print("hi"), child: Text("Show all"))
            ],
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
          height: 150,
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
          title: Text(
            "How to run the most effective meeting",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: [
              Icon(Feather.clock),
              Text("  50 mins ago"),
              SizedBox(
                width: 20,
              ),
              Icon(Feather.message_circle),
              Text("  60 Comments"),
            ],
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
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ListTile(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => DetailPage())),
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage("images/pic1.jpg")),
                      borderRadius: BorderRadius.circular(8)),
                ),
                title: Column(
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
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "Top 10 techniques to get rid of clutter in designs",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                subtitle: Row(
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
              ),
            ));
  }
}
