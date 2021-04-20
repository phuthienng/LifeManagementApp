import 'package:flutter/material.dart';
import 'package:lifemanagement/constant.dart';
import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          Row(
            children: <Widget>[
              ProjectTitle(),
              Spacer(),
              OutlinedButton(
                child: Text(
                  "View All",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                ),
                onPressed: null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectTitle extends StatelessWidget {
  const ProjectTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 24,
        child: Stack(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text("Project",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  margin: EdgeInsets.only(right: kDefaultPadding / 4),
                  height: 7,
                  color: kPrimaryColor.withOpacity(0.2)))
        ]));
  }
}
