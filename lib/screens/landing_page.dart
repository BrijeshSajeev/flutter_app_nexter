// import 'package:flutter/material.dart';
// import 'package:nexter/screens/login_page.dart';
// import 'package:nexter/screens/signup_screen.dart';

// class LandingScreen extends StatelessWidget {
//   const LandingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       // appBar: AppBar(
//       //   backgroundColor: Color(0xFFC69963),
//       // ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 Image.asset(
//                   "assets/hero.jpeg",
//                   color: Color(0xFF101D2C).withOpacity(0.99),
//                   colorBlendMode: BlendMode.modulate,
//                 ),
//                 Center(
//                   child: Padding(
//                     padding: const EdgeInsets.all(30),
//                     child: Image.asset(
//                       "assets/logo.png",
//                       width: width / 2,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 70, top: 110),
//                   child: Text(
//                     "YOUR OWN HOME:",
//                     style: TextStyle(
//                         color: Color(0xFFC69963),
//                         fontWeight: FontWeight.w500,
//                         fontSize: 16),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 70, top: 140),
//                   child: Text(
//                     "The Ultimate Personal\nFreedom",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18),
//                   ),
//                 ),
//               ],
//             ),
//             Stack(
//               children: [
//                 Image.asset(
//                   "assets/hero.jpeg",
//                   color: Color(0xFF101D2C).withOpacity(0.99),
//                   colorBlendMode: BlendMode.modulate,
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => SignUpScreen()));
//                   },
//                   child: Padding(
//                     padding: EdgeInsets.only(left: 70, top: height / 15),
//                     child: Align(
//                       alignment: Alignment.centerLeft,
//                       child: Container(
//                         child: const Text(
//                           "SIGN UP",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20),
//                         ),
//                         width: 180,
//                         height: 45,
//                         alignment: Alignment.center,
//                         padding: const EdgeInsets.symmetric(vertical: 12),
//                         decoration: const ShapeDecoration(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.all(
//                               Radius.circular(8),
//                             )),
//                             color: Color(0xFFC69963)),
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => LoginPage()));
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 70, top: 10),
//                     child: Text(
//                       "Login",
//                       style: TextStyle(
//                           color: Color(0xFFC69963),
//                           fontWeight: FontWeight.bold,
//                           fontSize: 22),
//                     ),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 110),
//                       child: Text(
//                         "----------",
//                         style: TextStyle(
//                           color: Color(0xFFC69963),
//                           fontWeight: FontWeight.bold,
//                           fontSize: 22,
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 110),
//                       child: Text(
//                         "Seen on",
//                         style: TextStyle(
//                             color: Color(0xFFC69963),
//                             fontWeight: FontWeight.bold,
//                             fontSize: 22),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 110),
//                       child: Text(
//                         "----------",
//                         style: TextStyle(
//                             color: Color(0xFFC69963),
//                             fontWeight: FontWeight.bold,
//                             fontSize: 22),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 180),
//                       child: Image.asset(
//                         "assets/logo-bbc.png",
//                         width: width / 4,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 180),
//                       child: Image.asset(
//                         "assets/logo-bi.png",
//                         width: width / 4,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 180),
//                       child: Image.asset(
//                         "assets/logo-forbes.png",
//                         width: width / 4,
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//             Container(
//               color: Color(0xFF101D2C),
//               width: double.infinity,
//               height: 400,
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 35,
//                   ),
//                   Text(
//                     "Top 3 Realtors",
//                     style: TextStyle(
//                         fontSize: 26,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFFC69963)),
//                   ),
//                   Row(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(left: width / 4, top: 30),
//                         child: CircleAvatar(
//                           radius: 30,
//                           backgroundImage: AssetImage("assets/realtor-1.jpeg"),
//                         ),
//                       ),
//                       Column(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(left: width / 19, top: 30),
//                             child: Text(
//                               "Erik Feinman",
//                               style: TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white),
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(left: width / 19, top: 6),
//                             child: Text(
//                               "250+ House Sold",
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.grey),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(left: width / 4, top: 30),
//                         child: CircleAvatar(
//                           radius: 30,
//                           backgroundImage: AssetImage("assets/realtor-2.jpeg"),
//                         ),
//                       ),
//                       Column(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(left: width / 19, top: 30),
//                             child: Text(
//                               "Kim Brown",
//                               style: TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white),
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(left: width / 19, top: 6),
//                             child: Text(
//                               "150+ House Sold",
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.grey),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(left: width / 4, top: 30),
//                         child: CircleAvatar(
//                           radius: 30,
//                           backgroundImage: AssetImage("assets/realtor-3.jpeg"),
//                         ),
//                       ),
//                       Column(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(left: width / 19, top: 30),
//                             child: Text(
//                               "Toby Ramsey",
//                               style: TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white),
//                             ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(left: width / 19, top: 6),
//                             child: Text(
//                               "100+ House Sold",
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.grey),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   "World's Best Luxury Home",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     fontSize: 28,
//                   ),
//                 ),
//                 Text(
//                   "       Lorem ipsum dolor sit amet, consectetur \n       Lorem ipsum dolor sit amet, consectetur ",
//                   style: TextStyle(
//                     fontWeight: FontWeight.w500,
//                     color: Colors.grey,
//                     fontSize: 18,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 50,
//                 ),
//                 Text(
//                   "Only The Best Properties",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     fontSize: 28,
//                   ),
//                 ),
//                 Text(
//                   "       Lorem ipsum dolor sit amet, consectetur \n       Lorem ipsum dolor sit amet, consectetur ",
//                   style: TextStyle(
//                     fontWeight: FontWeight.w500,
//                     color: Colors.grey,
//                     fontSize: 18,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 50,
//                 ),
//                 Text(
//                   "Top 1% Realtors",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     fontSize: 28,
//                   ),
//                 ),
//                 Text(
//                   "       Lorem ipsum dolor sit amet, consectetur \n       Lorem ipsum dolor sit amet, consectetur ",
//                   style: TextStyle(
//                     fontWeight: FontWeight.w500,
//                     color: Colors.grey,
//                     fontSize: 18,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 50,
//                 ),
//                 Text(
//                   "Secure Payment On Nexter",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     fontSize: 28,
//                   ),
//                 ),
//                 Text(
//                   "       Lorem ipsum dolor sit amet, consectetur \n       Lorem ipsum dolor sit amet, consectetur ",
//                   style: TextStyle(
//                     fontWeight: FontWeight.w500,
//                     color: Colors.grey,
//                     fontSize: 18,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 100,
//                 ),
//               ],
//             ),
//             Container(
//               height: 75,
//               width: double.infinity,
//               color: Color(0xFFC69963),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:nexter/screens/login_page.dart';
import 'package:nexter/screens/signup_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xFFC69963),
      // ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 43,
              width: double.infinity,
              // color: Color(0xFFC69963),
              color: Color(0xFF101D2C),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/hero.jpeg"),
                  colorFilter: ColorFilter.mode(
                    Color(0xFF101D2C).withOpacity(0.99),
                    BlendMode.modulate,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // Center the content horizontally
                    children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .center, // Center the children horizontally
                          children: [
                            Image.asset(
                              'assets/logo.png', // Replace with your image path
                              width: 174, // Adjust width as needed
                              height: 174, // Adjust height as needed
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: 20), // Add margin to the top
                        child: Text(
                          "\nYOUR OWN HOME:\n",
                          style: TextStyle(
                            color: Color(0xFFC69963),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.start, // Center the text
                        ),
                      ),
                      Text(
                        "The Ultimate Personal \nFreedom",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.start, // Center the text
                      ),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()),
                          );
                        },
                        child: Container(
                          child: const Text(
                            "SIGN UP",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          width: 160,
                          height: 45,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(0),
                              ),
                            ),
                            color: Color(0xFFC69963),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Text(
                          "Login\n\n",
                          style: TextStyle(
                            color: Color(0xFFC69963),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "___________",
                            style: TextStyle(
                              color: Color(0xFFC69963),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Seen on",
                            style: TextStyle(
                              color: Color(0xFFC69963),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "___________",
                            style: TextStyle(
                              color: Color(0xFFC69963),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "\n\n",
                            style: TextStyle(
                              color: Color(0xFFC69963),
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.start, // Center the text
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/logo-bbc.png",
                            width: width / 5,
                          ),
                          SizedBox(width: 16), // Add some spacing here
                          Image.asset(
                            "assets/logo-bi.png",
                            width: width / 5,
                          ),
                          SizedBox(width: 16), // Add some spacing here
                          Image.asset(
                            "assets/logo-forbes.png",
                            width: width / 5,
                          ),
                        ],
                      ),
                      Text(
                        "\n\n",
                        style: TextStyle(
                          color: Color(0xFFC69963),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.start, // Center the text
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Color(0xFF101D2C),
              width: double.infinity,
              height: 500,
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5),
                  Text(
                    "  TOP 3 REALTORS !",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFC69963),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/realtor-1.jpeg"),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Erik Feinman",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "250+ Houses Sold",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/realtor-2.jpeg"),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kim Brown",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "150+ Houses Sold",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/realtor-3.jpeg"),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Toby Ramsey",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "100+ Houses Sold",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30), // Added padding
                  child: Column(
                    children: [
                      Text(
                        "World's Best Luxury Home",
                        textAlign: TextAlign.center, // Center the text
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Experience Unmatched Luxury in Every Detail, Elevate Your Lifestyle with Our Exquisite Homes",
                        textAlign: TextAlign.center, // Center the text
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20), // Added padding
                  child: Column(
                    children: [
                      Text(
                        "Only The Best Properties",
                        textAlign: TextAlign.center, // Center the text
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Discover a Curated Collection of Elite Real Estate, Explore the Pinnacle of Property Selection and Quality",
                        textAlign: TextAlign.center, // Center the text
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20), // Added padding
                  child: Column(
                    children: [
                      Text(
                        "Top 1% Realtors",
                        textAlign: TextAlign.center, // Center the text
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Trust the Best for Your Property Needs,\nJoin the Top 1%.",
                        textAlign: TextAlign.center, // Center the text
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20), // Added padding
                  child: Column(
                    children: [
                      Text(
                        "Secure Payment On Nexter",
                        textAlign: TextAlign.center, // Center the text
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Your Transactions, Our Priority - Uncompromised Security.\nTrust in Nexter: Where Safety Meets Seamless Transactions",
                        textAlign: TextAlign.center, // Center the text
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Color(0xFF101D2C),
            ),
          ],
        ),
      ),
    );
  }
}
