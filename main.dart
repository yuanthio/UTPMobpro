import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

void main() => runApp(MyApp()); //untuk mengeksekusi program flutetr

class MyApp extends StatelessWidget {
  List<String> tags = [
    'JavaScript',
    'php',
    'Html',
    'css',
    'Bootstrap',
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff020d1c),
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor: Color(0xff020d1c),
          elevation: 0,
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(Icons.verified_user, color: Colors.red)),
          ],
        ),

        //bagian user
        body: SlidingSheet(
          color: Colors.blueAccent,
          elevation: 8,
          cornerRadius: 16,
          snapSpec: const SnapSpec(
            // Enable snapping. This is true by default.
            snap: true,
            // Set custom snapping points.
            snappings: [0.4, 0.7, 1.0],
            // Define to what the snappings relate to. In this case,
            // the total available space that the sheet can expand to.
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          // The body widget will be displayed under the SlidingSheet
          // and a parallax effect can be applied to it.
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Bagian User
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Yuanthio Virly',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Colors.white70,
                                  size: 17,
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(left: 4.0),
                                    child: Text(
                                      'Bogor, Jawa Barat ',
                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 16,
                                          letterSpacing: 3,
                                          wordSpacing: 2),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      )),
                ],
              ),

              //bagian sosial media
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(children: <Widget>[
                      Text(
                        '424',
                        style:
                            TextStyle(fontSize: 20, color: Colors.blueAccent),
                      ),
                      Text('Pengikut',
                          style: TextStyle(fontSize: 18, color: Colors.white))
                    ]),
                    Column(children: <Widget>[
                      Text(
                        '159',
                        style:
                            TextStyle(fontSize: 20, color: Colors.blueAccent),
                      ),
                      Text('Mengikuti',
                          style: TextStyle(fontSize: 18, color: Colors.white))
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(right: 32.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, right: 16, top: 8, bottom: 8),
                          child: Text(
                            'Follow',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            gradient: LinearGradient(
                                colors: [Colors.blueAccent, Colors.black54],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight)),
                      ),
                    )
                  ],
                ),
              ),

              //bagian tags
              Container(
                margin: EdgeInsets.only(top: 25),
                height: 45,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tags.length,
                    itemBuilder: (BuildContext contect, int index) {
                      return Container(
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [Colors.purple, Colors.blueAccent],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            tags[index],
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20),
              Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.whatsapp,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.youtube,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),

          builder: (context, state) {
            // This is the content of the sheet that will get
            // scrolled, if the content is bigger than the available
            // height of the sheet.

            //memanggil layer sliding
            return Container(
              margin: EdgeInsets.all(20),
              height: 500,
              child: SingleChildScrollView(
                // membuat layer menjadi scrollabel
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Judul
                          Row(
                            children: [
                              Text(
                                'BIODATA MAHASISWA',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(color: Colors.white, thickness: 2),
                      SizedBox(height: 30),
                      //biodata
                      Row(
                        children: [
                          Icon(Icons.person_pin, size: 30),
                          SizedBox(width: 5),
                          Text('Nama :',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Spacer(),
                          Text('Yuanthio Virly',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(width: 10),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.dialpad, size: 30),
                          SizedBox(width: 5),
                          Text('NPM :',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Spacer(),
                          Text('065120038',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(width: 10),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.date_range, size: 30),
                          SizedBox(width: 5),
                          Text('TTL :',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Spacer(),
                          Text('Bogor, 31 Desember 2001',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(width: 10),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.email, size: 30),
                          SizedBox(width: 5),
                          Text('E-mail :',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Spacer(),
                          Text('yuanthiovirly123@gmail.com',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(width: 10),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.call, size: 30),
                          SizedBox(width: 5),
                          Text('No. Telepon :',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Spacer(),
                          Text('08953360920',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(width: 10),
                        ],
                      ),
                      SizedBox(height: 30),
                      //projects
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Project',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Divider(color: Colors.white, thickness: 2),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black,
                            ),
                            padding: EdgeInsets.all(12),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Website',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(width: 30),
                                    Text(
                                      '30 Projects',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text(
                                      'UI/UX Design',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(width: 30),
                                    Text(
                                      '6 Projects',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text(
                                      'Mobile Apps',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(width: 30),
                                    Text(
                                      '204 Projects',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text(
                                      'Desktop Apps',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(width: 30),
                                    Text(
                                      '1001 Projects',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Published by The Yuans CodeBurner Group',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Copyright ',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Icon(Icons.copyright, size: 20),
                          Text(
                            ' 2023 by YuansProject',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
