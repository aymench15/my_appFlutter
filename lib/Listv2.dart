import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class LayoutCard2 extends StatelessWidget {
  final String child;

  LayoutCard2({required this.child});
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 310,
          child: Column(
            children: [
              Card(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 1),
                  color: Color.fromARGB(255, 12, 25, 59),
                  shadowColor: Color(0xff00adb5),
                  elevation: 20,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset("assets/bus stop.jpg",
                          height: 150,
                          width: 200), // AssetImage('assets/bus stop.jpg'),

                      ListTile(
                        title: Text(
                         child,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        subtitle: Text(
                          'depart : 08:00 AM',
                          style:
                              TextStyle(fontSize: 10, color: Colors.blueGrey),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                              iconSize: 40,
                              icon: Icon(
                                Icons.favorite,
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
                  )),
            ],
          ),
        ),
      ],
    );
    /*Card(
    child: Column(  
      mainAxisSize: MainAxisSize.min,  
      children: <Widget>[  
        const ListTile(  
          leading: Icon(Icons.album, size: 45),  
          title: Text('Sonu Nigam'),  
          subtitle: Text('Best of Sonu Nigam Song'),  
          
        ),  
      ],  
    ),  
  );  */
    /**/
  }
}
