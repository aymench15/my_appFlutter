import 'package:flutter/material.dart';

class LayoutCard extends StatelessWidget {
    String child1;
    final String child2;

  LayoutCard({required this.child1, required this.child2});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        color: Color.fromRGBO(3, 14, 42, 1.0),
        //child: Text(child),
        child: Card(
          margin: EdgeInsets.fromLTRB(20, 0, 0, 1),
          color: Color.fromARGB(255, 12, 25, 59),
          shadowColor: Color(0xff00adb5),
          elevation: 20,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Image.asset("assets/bus stop.jpg",
                  height: 150,
                  width: 250), // AssetImage('assets/bus station.jpg'),

               ListTile(
                title: Text(child1),
                  subtitle: Text(child2,style: TextStyle(fontSize: 10, color: Colors.blueGrey),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                      iconSize: 40,
                      icon: Icon(
                        Icons.favorite_border,
                        color: Color(0xff00adb5),
                      ),
                      color: Colors.white,
                      onPressed: createElement),
                  IconButton(
                      iconSize: 40,
                      icon: Icon(
                        Icons.library_books_outlined,
                        color: Color(0xff00adb5),
                      ),
                      color: Colors.white,
                      onPressed: createElement),
                  IconButton(
                      iconSize: 40,
                      icon: Icon(
                        Icons.map_outlined,
                        color: Color(0xff00adb5),
                      ),
                      color: Colors.white,
                      onPressed: createElement),
                ],
              ),
            ],
          ),
        ));
  }
}
