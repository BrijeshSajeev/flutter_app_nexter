import 'package:flutter/material.dart';
import 'package:nexter/screens/landing_page.dart';
import 'package:nexter/screens/login_page.dart';

import '../service/auth_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class HouseInfo {
  final String photo;
  final String name;
  final String place;
  final String moneyInIndia;
  final double squareMeter;
  final int rooms;

  HouseInfo({
    required this.photo,
    required this.name,
    required this.place,
    required this.moneyInIndia,
    required this.squareMeter,
    required this.rooms,
  });
}

// List _images = [
//   "assets/house-1.jpeg",
//   "assets/house-2.jpeg",
//   "assets/house-3.jpeg",
//   "assets/house-4.jpeg",
//   "assets/house-5.jpeg",
//   "assets/house-6.jpeg",
//   "assets/gal-7.jpeg",
//   "assets/gal-1.jpeg",
//   "assets/gal-2.jpeg",
//   "assets/gal-3.jpeg",
//   "assets/gal-4.jpeg",
//   "assets/gal-5.jpeg",
//   "assets/gal-6.jpeg",
//   "assets/gal-8.jpeg",
//   "assets/gal-9.jpeg",
//   "assets/gal-10.jpeg",
// ];
// List _place = [
//   "assets/house-1.jpeg",
//   "assets/house-2.jpeg",
//   "assets/house-3.jpeg",
//   "assets/house-4.jpeg",
//   "assets/house-5.jpeg",
//   "assets/house-6.jpeg"
// ];

class _HomeScreenState extends State<HomeScreen> {
  List<HouseInfo> houseList = [
    HouseInfo(
      photo: "assets/house-1.jpeg",
      name: "Luxurious Mansion",
      place: "Delhi",
      moneyInIndia: '2,000,0000',
      squareMeter: 300,
      rooms: 5,
    ),
    HouseInfo(
      photo: "assets/house-2.jpeg",
      name: "Cozy Cottage",
      place: "Goa",
      moneyInIndia: '8,000,000',
      squareMeter: 150,
      rooms: 7,
    ),
    HouseInfo(
      photo: "assets/house-3.jpeg",
      name: "Serene Retreat",
      place: "Bangalore",
      moneyInIndia: '12,000,000',
      squareMeter: 180,
      rooms: 3,
    ),
    HouseInfo(
      photo: "assets/house-4.jpeg",
      name: "Urban Oasist",
      place: "Goa",
      moneyInIndia: '10,000,000',
      squareMeter: 180,
      rooms: 3,
    ),
    HouseInfo(
      photo: "assets/house-5.jpeg",
      name: "Tranquil Abode",
      place: "Bangalore",
      moneyInIndia: '12,000,000',
      squareMeter: 180,
      rooms: 5,
    ),
    HouseInfo(
      photo: "assets/house-6.jpeg",
      name: "Modern Apartment",
      place: "Kerala",
      moneyInIndia: '24,000,000',
      squareMeter: 200,
      rooms: 7,
    ),
    HouseInfo(
      photo: "assets/gal-1.jpeg",
      name: "Lakeside Lodge",
      place: "Goa",
      moneyInIndia: '22,000,000',
      squareMeter: 180,
      rooms: 4,
    ),

    HouseInfo(
        photo: "assets/gal-2.jpeg",
        name: "Skyline Residence",
        place: "Delhi",
        moneyInIndia: '18,000,000',
        squareMeter: 180,
        rooms: 3),
    HouseInfo(
      photo: "assets/gal-3.jpeg",
      name: "Garden Hideaway",
      place: "Andra Pradesh",
      moneyInIndia: '21,000,000',
      squareMeter: 180,
      rooms: 4,
    ),

    HouseInfo(
      photo: "assets/gal-4.jpeg",
      name: "Rustic Charm Cottage",
      place: "Tamilnadu",
      moneyInIndia: '10,000000',
      squareMeter: 150,
      rooms: 3,
    ),

    // Add more houses here
  ];

  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC69963),
        leadingWidth: 50,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () async {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Logout"),
                        content: Text("Are you sure you want to logout?"),
                        actions: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.cancel,
                                color: Colors.red,
                              )),
                          IconButton(
                              onPressed: () async {
                                authService.signOut().whenComplete(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LandingScreen()));
                                });
                              },
                              icon: Icon(
                                Icons.done,
                                color: Colors.green,
                              ))
                        ],
                      );
                    });
              },
              icon: Icon(
                Icons.logout,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: houseList.length,
              itemBuilder: (context, index) {
                HouseInfo house = houseList[index];

                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Card(
                    elevation: 15,
                    shadowColor: Colors.black,
                    color: Colors.white70,
                    child: SizedBox(
                      height: 500,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: Image.asset(house.photo),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: height / 4.5, left: width / 5.9),
                            child: Container(
                              color: Color(0xFF101D2C),
                              height: 50,
                              width: 200,
                              child: Center(
                                child: Text(
                                  house.name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 300),
                                    child: Text(
                                      house.place,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 300),
                                    child: Text(
                                      "${house.rooms} Rooms", // Placeholder, you can update this with actual room count
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      "${house.squareMeter} m2",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      "\₹${house.moneyInIndia}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 430),
                            child: Container(
                              height: 75,
                              width: double.infinity,
                              color: Color(0xFFC69963),
                              child: Center(
                                child: Text(
                                  "CONTACT RETAILER",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
