import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos_express/models/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 190.0,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 7, 125, 180),
                  image: DecorationImage(
                      image: AssetImage("assets/dwr.jpg"), fit: BoxFit.cover),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw8tnmRAobUlTWwXTzG0yJevfymCAQw00wZw&usqp=CAU'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Admin",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 209, 233, 240)),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_alarm,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          "http://mother.expressretailbd.com",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white60),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5.0),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                height: 45.0,
                width: double.infinity,
                padding: EdgeInsets.only(top: 14.0, left: 15.0),
                child: Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 7, 125, 180),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.0),
            InkWell(
              onTap: () {},
              child: Container(
                height: 45.0,
                width: double.infinity,
                color: Color.fromARGB(255, 224, 221, 221),
                padding: EdgeInsets.only(top: 14.0, left: 15.0),
                child: Text(
                  "Sign out",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 7, 125, 180),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 2.0,
        backgroundColor: Color.fromARGB(255, 7, 125, 180),
        title: Text(
          "POS EXPRESS",
          style: TextStyle(
              fontSize: 22.0, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 160.0,
              width: double.infinity,
              color: Color.fromARGB(255, 7, 125, 180),
              child: Stack(children: [
                Positioned(
                  left: 130.0,
                  top: 10.0,
                  child: Text(
                    "Welcome,Admin",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  right: 10.0,
                  top: 10.0,
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw8tnmRAobUlTWwXTzG0yJevfymCAQw00wZw&usqp=CAU'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 65.0, left: 5.0),
                  child: Container(
                    height: 40.0,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: headTitle.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0),
                              child: Text(
                                "${headTitle[index]['name']}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 7, 125, 180),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ]),
            ),
            Container(
              height: 190.0,
              width: double.infinity,
              color: Color.fromARGB(255, 255, 255, 255),
              child: GridView.builder(
                  itemCount: firstProducts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 2.0,
                      crossAxisSpacing: 2.0,
                      childAspectRatio: 4 / 4),
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "${firstProducts[index]['image']}",
                            width: 35,
                            height: 35,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "${firstProducts[index]['name']}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 7, 125, 180),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(height: 10.0),
            Text(
              "Reports",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 7, 125, 180),
              ),
            ),
            Text(
              "- - - - - - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - -",
              style: TextStyle(
                  fontSize: 20.0, color: Color.fromARGB(255, 136, 139, 141)),
            ),
            Container(
              height: 230.0,
              width: double.infinity,
              color: Color.fromARGB(255, 255, 255, 255),
              child: GridView.builder(
                  itemCount: SecondProducts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 2.0,
                      crossAxisSpacing: 2.0,
                      childAspectRatio: 4 / 4),
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "${SecondProducts[index]['image']}",
                            width: 35,
                            height: 35,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "${SecondProducts[index]['name']}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 7, 125, 180),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
