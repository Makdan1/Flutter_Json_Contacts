import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_contact/contact.dart';
import 'package:flutter_contact/contacts.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  List data;
  String Name;
  String Number;
  Contact contact = Contact();
  PostalAddress address = PostalAddress(label: "Home");
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int loopCompleted;
  Color color = Colors.blue;

  _launchCaller() async {
    const url = "tel:80234999";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void initState() {
    _getContactPermission();
  super.initState();
  }

Future<String> loadFromAssets() async {
  return await rootBundle.loadString('json_data/people.json');
}
  Future<PermissionStatus> _getContactPermission() async {

    PermissionStatus permission = await PermissionHandler()
        .checkPermissionStatus(PermissionGroup.contacts);
    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.disabled) {
      Map<PermissionGroup, PermissionStatus> permissionStatus =
      await PermissionHandler()
          .requestPermissions([PermissionGroup.contacts]);
      return permissionStatus[PermissionGroup.contacts] ??
          PermissionStatus.unknown;

    }
    return permission;
  }

void _handleInvalidPermissions(PermissionStatus permissionStatus) {
  if (permissionStatus == PermissionStatus.denied) {
    throw PlatformException(
        code: "PERMISSION_DENIED",
        message: "Access to location data denied",
        details: null);
  } else if (permissionStatus == PermissionStatus.disabled) {
    throw PlatformException(
      code: "PERMISSION_DISABLED",
      message: "Location data is not available on device",
      details: null,
    );
  }
}

   loop() async {
     color = Colors.white;
  String jsonString = await loadFromAssets();
  List decoded = json.decode(jsonString);
  print(decoded);
  int counter = 0;
  for(int i=0;i<decoded.length;i++) {
    var word = decoded.get(i);
    counter = counter+1;
  print(decoded.get(i)['Number']);
  contact.givenName = word['First Name'];
  contact.middleName = word['Last Name'];
  contact.phones = [Item(label: "mobile", value: word['Number'])];
  address.city = word['LGA'];
  address.region = word['State'];
  contact.suffix = word['Gender'];
  contact.postalAddresses = [address];
  Contacts.addContact(contact);

  if(counter == decoded.length){
    _scaffoldKey.currentState.hideCurrentSnackBar();
    Fluttertoast.showToast(msg: 'All contact saved to your phone');
    loopCompleted = 1;
    color = Colors.blue;
    Navigator.pop(context);
  }
  }}


@override
  Widget build(BuildContext context) {


    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Text('Press the Save button to save to your phone'),
               CircularProgressIndicator(
                backgroundColor: color,),
              GestureDetector(
                onTap:() {
                  loop();
                },
                  child:
                  Icon(
                      Icons.save
              )
              ),
            ],
          )
        ),
        body: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('json_data/people.json'),
            builder: (context, snapshot) {
              //decode JSON
              var mydata = json.decode(snapshot.data.toString());
              return ListView.builder(
                itemCount: mydata == null ? 0 : mydata.length,
                itemBuilder: (BuildContext context, int index) {
                  Name =  mydata[index]['First Name'];
                  Number =  mydata[index]['Number'];
                  return Container(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('First Name : ' +Name,style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('Last Name : ' + mydata[index]['Last Name'],style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('Phone Number : ' + Number,style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('State : ' + mydata[index]['State'],style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('Sex : ' + mydata[index]['Gender'],style: TextStyle(fontWeight: FontWeight.bold),),
SizedBox(height: 10,),
                      ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
    );
  }
}
