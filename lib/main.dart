// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';
import 'package:my_app/ListView.dart';
import 'package:intl/intl.dart';
import 'package:location/location.dart';
import 'package:flutter/services.dart';
// ignore: unused_import
import 'package:macadress_gen/macadress_gen.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:my_app/Listv2.dart';
import 'package:my_app/ConvertsDataJson.dart';
import 'package:http/http.dart' as http;
//import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const MyApp());
  /* List<ObjectFormatter> card3 = [];
  for (dynamic o in _card2) {
    card3.add(o);
  }
  for (ObjectFormatter o in card3) {
    print(o.ID);
  }*/
/* List<String> from1=[];
    for(e in )*/
  // print('affichage aiaiiai ='+ obj.toString());
  // Json convert
  /* import 'dart:convert';

main() {
  String objText = '{"name": "bezkoder", "age": 30}';

  User user = User.fromJson(jsonDecode(objText));

  print(user);*/
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0, 173, 181, 1),
        textTheme: TextTheme(
            // bodyText2: TextStyle(fontSize: 16.0),
            // button: TextStyle(fontSize: 16.0)
            ),
      ),
      home: const MyHomePage(
        title: '',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // GlobalKey _bottomNavigationKey = GlobalKey();

  Postdata() async {
    var response = await http.get(Uri.https('httpbin.org/post'))
  }

  DateTime _now = DateTime.now();
  List<String> options = [
    'Biskra',
    '',
    'Biskra-tolga',
    'Biskra-tolga',
  ];

  String dropdownValue = 'Tolga';
  DateTime _lastdate = DateTime.now();
  //String dropdownValue = 'Tolgaaaa - Ain elKarma';
  String _currentSelectedValue = '';
  String _currentSelectedValue2 = 'Food';
  String dropValue = 'Biskra';
  DateTime _after = DateTime.now();
  String _currentAddress = "Waiting...";
  bool _activerNotif = false;
  int _selectedIndex = 0;
  int _counter = 0;

  String _dduration = "no duration detected";
  MacadressGen macadressGen = MacadressGen();
  String _macAddressD = "waiting for adress mac";
  List<String> _card = [
    'Tolga',
    'Tolga - elhadjeb',
    'Tolga - elAlia',
    'Tolga - Biskra',
    'Tolga - elHadjeb',
    'Tolga - Ain elKarma',
    'Tolga - elHadjeb',
    'Tolga - Ain elKarma',
    'Tolga - Ain elKarma',
    'Tolga - elHadjeb',
    'Tolga - Ain elKarma',
    'Tolga - elHadjeb',
    'Tolga - Ain elKarma',
    'Tolga - Ain elKarma',
    'Tolga - elHadjeb',
    'Tolga - Ain elKarma',
    'Tolga - elHadjeb',
    'Tolga - Ain elKarma',
  ];
  List<dynamic> _card2 = [
    {
      "id": 92,
      "from": "biskra",
      "to": "tolga",
      "arrets": ["AnglaisNamesd", "sasasasd"]
    },
    {
      "id": 93,
      "from": "biskra",
      "to": "sasa",
      "arrets": ["AnglaisName"]
    },
    {
      "id": 101,
      "from": "lichana",
      "to": "biskra",
      "arrets": ["bouchagroune", "elhadjeb"]
    },
    {
      "id": 135,
      "from": "Tolga",
      "to": "University",
      "arrets": ["bouchagroune", "elhadjeb", "Ainlkarma", "Alia"]
    },
    {
      "id": 136,
      "from": "Alia",
      "to": "university",
      "arrets": ["kiskI"]
    },
    {
      "id": 140,
      "from": "biskraCenter",
      "to": "university",
      "arrets": ['zgag']
    },
    {
      "id": 143,
      "from": "uknown",
      "to": "uknown",
      "arrets": [
        "uknown",
        "uknown",
        "uknown",
        "uknown",
        "uknown",
        "uknown",
        "uknown"
      ]
    }
  ];

  /* void getLists(){
    List <String>  [];
    for(var item in _card2 ){

    }
  }*/

  Widget bodyFunction() {
    var mainAxisAlignment = MainAxisAlignment;
    switch (_selectedIndex) {
      case 0:
        return Container(
          color: Color.fromRGBO(3, 14, 42, 1),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 0,
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsetsDirectional.only(end: 12.0),
                      child: IconButton(
                          iconSize: 20,
                          icon: Icon(Icons.search),
                          color: Colors.white,
                          onPressed:
                              _duration), // myIcon is a 48px-wide widget.
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(
                        color: Colors.grey[800], fontWeight: FontWeight.bold),
                    hintText: "Enter destination t find nearest BusStation",
                    fillColor: Color.fromRGBO(3, 14, 42, 1.0),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[],
                ),
              ),
              Container(
                child: Expanded(
                  flex: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'All bus stations',
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                      SizedBox(
                          width: 300,
                          child: FormField<String>(
                            initialValue: dropdownValue,
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'please select a trip';
                              else
                                return null;
                            },
                            builder: (FormFieldState<String> state) {
                              return InputDecorator(
                                decoration: InputDecoration(
                                  //   labelStyle: textStyle,
                                  //  errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                                  //  hintText: 'Please select expense',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                ),
                                //  isEmpty: _currentSelectedValue == '',

                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    isExpanded: true,
                                    isDense: true,
                                    dropdownColor:
                                        Color.fromARGB(255, 12, 25, 59),
                                    borderRadius: BorderRadius.circular(20),
                                    value: dropdownValue,
                                    icon: const Icon(Icons.arrow_downward,
                                        color: Color(0xff00adb5)),
                                    elevation: 16,
                                    style: const TextStyle(
                                        color: Color(0xff00adb5), fontSize: 20),
                                    underline: Container(
                                      height: 2,
                                      color: Color(0xff00adb5),
                                    ),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue = newValue.toString();
                                      });
                                    },
                                    items: _card.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value.toString(),
                                        child: Text(value,
                                            overflow: TextOverflow.ellipsis),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              );
                            },
                          )

                          //child:

                          /*    TextField(
                        decoration: InputDecoration(
                          suffixIcon: Padding(
                            padding:
                                const EdgeInsetsDirectional.only(end: 12.0),
                            child: IconButton(
                                iconSize: 30,
                                icon: Icon(Icons.search),
                                color: Colors.white,
                                onPressed:
                                    _duration), // myIcon is a 48px-wide widget.
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(27.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold),
                          hintText: "write station you want",
                          fillColor: Color.fromRGBO(3, 14, 42, 1.0),
                        ),
                      ),*/
                          ),

                      /*  SizedBox(
                        width: 130,
                        child: DropdownButton<String>(
                          dropdownColor: Color.fromARGB(255, 12, 25, 59),
                          borderRadius: BorderRadius.circular(20),
                          value: dropdownValue,
                          icon: const Icon(Icons.arrow_downward,
                              color: Color(0xff00adb5)),
                          elevation: 16,
                          style: const TextStyle(
                              color: Color(0xff00adb5), fontSize: 17),
                          underline: Container(
                            height: 2,
                            color: Color(0xff00adb5),
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>[
                            'Biskra-Tolga',
                            'Tolga-ta',
                            'elHadjeb',
                            'elAlia'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),*/
                      /* SizedBox(
                        width: 90,
                        height: 50,
                        child: ElevatedButton(
                          child: Text('Find'),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                  //  style: ButtonStyle(shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)) ),
                                  width: 1.3,
                                  color: Color.fromRGBO(32, 178, 170, 1.0)),
                              primary: Color.fromARGB(255, 24, 38, 75),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),*/
                    ],
                  ),
                ),
              ),

              Container(
                child: Expanded(
                  flex: 0,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Stations',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              //  ),
              Expanded(
                flex: 9,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _card2.length,
                  itemBuilder: ((context, index) {
                    return LayoutCard(
                      child1: _card2[index],
                      child2: _card2[index],
                    );
                  }),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  '',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        );

        break;
      case 1:
        return Container(
          color: Color.fromRGBO(3, 14, 42, 1.0),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  //mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                        child: Row(
                      children: [
                        Text('Active Bus Notifications',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                        Switch(
                            activeColor: Color(0xff00adb5),
                            value: _activerNotif,
                            onChanged: (bool val) {
                              setState(() {
                                _activerNotif = val;
                              });
                            }),
                      ],
                    ))
                  ],
                ),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      height: 510,
                      child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) =>
                              LayoutCard2(child: _card[index])),
                    ),
                  ],
                ),
              ),

              // LayoutCard(child: "s",)
              // ),
            ],
          ),
        );
        break;
      case 2:
        return Container(
            color: Color.fromRGBO(3, 14, 42, 1.0),
            child: FormField<String>(
              builder: (FormFieldState<String> state) {
                return InputDecorator(
                  decoration: InputDecoration(
                    //   labelStyle: textStyle,
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 16.0),
                    hintText: 'Please select expense',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: BorderSide(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 40.0),
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<dynamic>(
                      dropdownColor: Color.fromARGB(255, 12, 25, 59),
                      borderRadius: BorderRadius.circular(20),
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_downward,
                          color: Color(0xff00adb5)),
                      elevation: 16,
                      style: const TextStyle(
                          color: Color(0xff00adb5), fontSize: 20),
                      underline: Container(
                        height: 2,
                        color: Color(0xff00adb5),
                      ),
                      onChanged: (dynamic? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: _card2
                          .map<DropdownMenuItem<dynamic>>((dynamic value) {
                        return DropdownMenuItem<dynamic>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                );
              },
            ));
        break;
      default:
        return Container(color: Color.fromRGBO(3, 14, 42, 1.0));
        break;
    }
  }

  static const TextStyle txtstyle =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      ' Find your Station',
      style: txtstyle,
    ),
    Text(
      ' Add favorite station',
      style: txtstyle,
    ),
    Text(
      ' Follow your line',
      style: txtstyle,
    ),
  ];
  // Platform messages are async in nature
  // that's why we made a async function.
  void _duration() {
    var format = DateFormat("HH:mm:ss");
    // _dduration = _lastdate.toString();
    var a = DateFormat('kk:mm:ss').format(_lastdate);
    var b = DateFormat('kk:mm:ss').format(_now);

    var one = format.parse(a);
    var two = format.parse(b);
//print("${two.difference(one)}");
    setState(() {
      _dduration = two.difference(one).toString();
    });
  }

  void onChnaged(String value) {
    setState(() {
      value = value;
    });
  }

  void _initMacAddress() async {
    String macAddress;

    try {
      macAddress = await macadressGen.getMac();
    } on PlatformException {
      macAddress = 'Error getting the MAC address.';
    }

    setState(() {
      _macAddressD = macAddress;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _updateTime() {
    _lastdate = _now;
    setState(() {
      _now = DateTime.now();
    });
  }

  void _currentLocation() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();

    setState(() {
      _now = DateTime.now();
      _currentAddress = " ";
      _currentAddress = _currentAddress + _locationData.toString();
      _currentAddress = _currentAddress + " \n";
      _currentAddress = _currentAddress +
          " latitude : " +
          _locationData.altitude.toString() +
          "\n" +
          "accuracy : " +
          _locationData.accuracy.toString();
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(3, 14, 42, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(3, 14, 42, 1.0),
        actions: [
          Container(
            width: 50,
            height: 30,
            child: Stack(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.bus_alert,
                    color: Colors.white,
                    size: 28,
                  ),
                  onPressed: () {
                    setState(() {});
                  },
                ),
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 11, left: 7.5),
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffc32c37),
                        border: Border.all(color: Colors.white, width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Center(
                        child: Text(
                          _counter.toString(),
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        title: _widgetOptions.elementAt(_selectedIndex),
      ),
      body: bodyFunction(),
      /* (  
        
      
          //(),
       
        

        
       
       child: Column( 
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Column(crossAxisAlignment: CrossAxisAlignment.end, children: <
                Widget>[
              const Text('MAC Address:', style: TextStyle(color: Colors.white)),
              Text(
                _macAddressD,
                style: Theme.of(context).textTheme.headline5,
              ),
              ElevatedButton(
                onPressed: _initMacAddress,
                child: const Text("Get MAC"),
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(100, 40)),
              ),
            ]),
            Column(children: <Widget>[
              const Text('Duration between two dates:',
                  style: TextStyle(color: Colors.white)),
              Text(_dduration,
                  // style: Theme.of(context).textTheme.headline5,
                  style: TextStyle(color: Colors.white)),
              ElevatedButton(
                onPressed: _duration,
                child: const Text("Get Duration"),
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(100, 40)),
              ),
            ]),
            Column(children: <Widget>[
              const Text('Current location is:',
                  style: TextStyle(color: Colors.white)),
              Text(_currentAddress,
                  //  style: Theme.of(context).textTheme.headline5,
                  style: TextStyle(color: Colors.white)),
            ]),
            Column(children: <Widget>[
              const Text('Current time is:',
                  style: TextStyle(color: Colors.white)),
              Text((DateFormat('kk:mm:ss').format(_now)),
                  //style: ,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
              ElevatedButton(
                onPressed: _currentLocation,
                child: const Text("Refresh"),
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(100, 40)),
              ),
              ElevatedButton(onPressed: _currentLocation, child: Text('erfdg'))
            ]),
          ],
       ),
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 12, 25, 59),
        selectedItemColor: Color.fromRGBO(32, 178, 170, 1.0),
        unselectedItemColor: Colors.white,
        iconSize: 30,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.route_sharp), label: '')
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
