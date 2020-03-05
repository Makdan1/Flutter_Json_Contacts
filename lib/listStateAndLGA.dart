import 'dart:math';
import 'package:flutter/material.dart';
import 'package:uche_contacts/home.dart';


class ListOfState extends StatefulWidget {


  @override
  _StudentsOption createState() => _StudentsOption(

  );
}

class _StudentsOption extends State<ListOfState> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final appBar = Padding(
      padding: EdgeInsets.only(bottom: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          )
        ],
      ),
    );



    final formFieldSpacing = SizedBox(
      height: 30.0,
    );
    final deviceWidth = MediaQuery
        .of(context)
        .size
        .width;



    return Scaffold(
      appBar:
      AppBar(
        backgroundColor: Color(0xffe46b10),
        title: Text(

            'States'
        ),
      ),
      body: Stack(
          children: <Widget>[
            Hero(
              tag:'nice',
              child:
              Container(
                padding: EdgeInsets.only(top: 40.0),

                child: ListView(
                  children: <Widget>[

                    Container(
                      padding: EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Card(
                            child: ExpansionTile(
                              title: Row(
                                children: <Widget>[
                                  Icon(
                                      Icons.contacts
                                  ),
                                  SizedBox(width: 15,),
                                  Text(
                                    "Abia",
                                    style: TextStyle(
                                        fontFamily: 'Signatra', fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              children: <Widget>[
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Aba North",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Aba South",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Arochukwu",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Bende",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Ikwuano",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Isiala NGWA North",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Isiala NGWA South",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Isuikwuto",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Obingwa",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Ohafia",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Osisioma",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Ugwunagbo",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Ukwa West",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Ukwa East",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Umu - NNEOCHI",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Umuahia South",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Umuahia North",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ),
                          Card(
                            child: ExpansionTile(
                              title:Row(
                                children: <Widget>[
                                  Icon(
                                      Icons.laptop
                                  ),
                                  SizedBox(width: 15,),
                                  Text(
                                    "Oyo",
                                    style: TextStyle(
                                        fontFamily: 'Signatra', fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              children: <Widget>[
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Foodies",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Snacks",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Drinks",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),

                              ],
                            ),

                          ),


                          Card(
                            child: ExpansionTile(
                              title: Row(
                                children: <Widget>[
                                  Icon(
                                      Icons.laptop
                                  ),
                                  SizedBox(width: 15,),
                                  Text(
                                    "Osun",
                                    style: TextStyle(
                                        fontFamily: 'Signatra', fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              children: <Widget>[
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Automobile",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Motocycles",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Factory Machines",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),

                              ],
                            ),

                          ),

                          Card(
                            child: ExpansionTile(
                              title:Row(
                                children: <Widget>[
                                  Icon(
                                      Icons.laptop
                                  ),
                                  SizedBox(width: 15,),
                                  Text(
                                    "Ondo",
                                    style: TextStyle(
                                        fontFamily: 'Signatra', fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              children: <Widget>[
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Graphic Design",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Animation",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "UI/UX Design",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),

                              ],
                            ),

                          ),

                          Card(
                            child: ExpansionTile(
                              title: Row(
                                children: <Widget>[
                                  Icon(
                                      Icons.laptop
                                  ),
                                  SizedBox(width: 15,),
                                  Text(
                                    "Ekiti",
                                    style: TextStyle(
                                        fontFamily: 'Signatra', fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              children: <Widget>[
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Men",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Women",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Unisex",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),

                              ],
                            ),

                          ),

                          Card(
                            child: ExpansionTile(
                              title:Row(
                                children: <Widget>[
                                  Icon(
                                      Icons.laptop
                                  ),
                                  SizedBox(width: 15,),
                                  Text(
                                    "Delta",
                                    style: TextStyle(
                                        fontFamily: 'Signatra', fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              children: <Widget>[
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Chairs & Tables",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Sofa",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Building",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),

                              ],
                            ),

                          ),

                          Card(
                            child: ExpansionTile(
                              title: Row(
                                children: <Widget>[
                                  Icon(
                                      Icons.laptop
                                  ),
                                  SizedBox(width: 15,),
                                  Text(
                                    "Calabar",
                                    style: TextStyle(
                                        fontFamily: 'Signatra', fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              children: <Widget>[
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Architects",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Quantity Surveyours",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Plasterers",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),

                              ],
                            ),

                          ),

                          Card(
                            child: ExpansionTile(
                              title: Row(
                                children: <Widget>[
                                  Icon(
                                      Icons.laptop
                                  ),
                                  SizedBox(width: 15,),
                                  Text(
                                    "Anambra",
                                    style: TextStyle(
                                        fontFamily: 'Signatra', fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              children: <Widget>[
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Plumber",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Electrician",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Laundry",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),

                              ],
                            ),

                          ),

                          Card(
                            child: ExpansionTile(
                              title:Row(
                                children: <Widget>[
                                  Icon(
                                      Icons.laptop
                                  ),
                                  SizedBox(width: 15,),
                                  Text(
                                    "Kogi",
                                    style: TextStyle(
                                        fontFamily: 'Signatra', fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              children: <Widget>[
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Men Saloon",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Women Saloon",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Hair Ingredients",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),

                              ],
                            ),

                          ),

                          Card(
                            child: ExpansionTile(
                              title: Row(
                                children: <Widget>[
                                  Icon(
                                      Icons.laptop
                                  ),
                                  SizedBox(width: 15,),
                                  Text(
                                    "Kaduna",
                                    style: TextStyle(
                                        fontFamily: 'Signatra', fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              children: <Widget>[
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      " Laptop Repairs",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "Phone Repairs",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Divider(),
                                ListTile(
                                  title: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
MaterialPageRoute(builder: (context) => HomePage()));
                                    },
                                    child: Text(
                                      "TV Repairs",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),

                              ],
                            ),

                          ),
                        ],
                      ),
                    ),

                  ],

                ),

              ),

            ),

          ]
      ),
    );
  }

}