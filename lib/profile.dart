import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  get color1 => Colors.white;

  get color2 => Colors.redAccent;

  @override
  Widget build(BuildContext context) {
    final String image = "assets/kaju.jpg";
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          height: 300.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60.0),
                  bottomRight: Radius.circular(80.0)),
              gradient: LinearGradient(
                  colors: [color1, color2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
        ),
        //SizedBox(height: 10.0,),
        Container(
          margin: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: <Widget>[
              Text(
                'Date Mate',
                style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
              //image slider
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(
                          image,
                          height: 350.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text('6 km away'),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20.0,
              ),
              Text(
                //'Alaska Young-20',
                'Kajol Lama-21',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.location_on),
                  Text(
                    //'Florida,USA'
                    'Sunakothi,Neplal',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      icon: Icon(FontAwesomeIcons.instagram), onPressed: () {}),
                  IconButton(
                      icon: Icon(FontAwesomeIcons.facebook), onPressed: () {}),
                  IconButton(
                      icon: Icon(FontAwesomeIcons.twitter), onPressed: () {}),
                ],
              ),
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 16.0),
                      margin: const EdgeInsets.only(
                          top: 30.0, left: 20.0, right: 20.0, bottom: 20.0),

                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(30.0),
                        //gradient: LinearGradient(colors: [color1, color2]),
                      ),
                      // margin: const EdgeInsets.only(top: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(FontAwesomeIcons.user),
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(
                                Icons.location_on,
                              ),
                              onPressed: () {}),
                          Spacer(),
                          IconButton(icon: Icon(Icons.add), onPressed: () {}),
                          IconButton(
                              icon: Icon(Icons.message), onPressed: () {}),
                        ],
                      ),
                    ),
                    Center(
                      child: FloatingActionButton(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                        ),
                        backgroundColor: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          ],
        ),
      ]),
    );
  }
}
