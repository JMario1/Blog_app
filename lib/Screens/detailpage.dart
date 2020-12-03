import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: TextFormField(
                  maxLines: null,
                  decoration: InputDecoration(
                      suffixIcon:
                          IconButton(icon: Icon(Feather.send), onPressed: null),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 3),
                          borderRadius: BorderRadius.circular(16))),
                ),
              )),
              IconButton(
                icon: Icon(Feather.heart),
                onPressed: () => print("liked"),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Text("  50 mins ago"),
                  ],
                ),
                Text(
                  "How to run the most effective meeting",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 200,
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
                Text(
                    "    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit amet consectetur adipisci[ng] velit, sed quia non numquam [do] eius modi tempora inci[di]dunt, ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur"),
                SizedBox(
                  height: 30,
                ),
                Text("Comments"),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) => ListTile(
                          title: Text("data"),
                        ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
