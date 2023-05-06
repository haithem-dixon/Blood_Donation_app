import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'ghidelines.dart';
import 'home.dart';
import 'package:hope/login.dart';
import 'profile.dart';
import 'settings.dart';

class Menuu extends StatefulWidget {
  const Menuu({super.key});

  @override
  State<Menuu> createState() => _MenuuState();
}

class _MenuuState extends State<Menuu> {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            height: 130,
            width: 110,
            padding: const EdgeInsets.only(top: 60.0, left: 20.0, right:20.0,bottom: 30),

            child: OutlinedButton(
              style: OutlinedButton.styleFrom(

                  minimumSize: Size(20, 20),
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.white)
              ),
              onPressed: () {
               Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back,

                size: 30.0,
                color: Colors.black87,
              ),
            ),






          ),
          Container(


            height: 130,
            width: 330,
            padding: const EdgeInsets.only(top: 25.0, left: 30.0, right:20.0,bottom: 25),
            decoration: const BoxDecoration(
              color: Colors.redAccent,

              borderRadius: BorderRadius.only(
                topRight: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),),
            child:  Row(
              children:  [
                const CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage("images/profile.png")
                ),
                SizedBox(width: 51,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Ghamoud",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,

                        )
                    ),
                    Text("Haithem",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,

                        )
                    )
                  ],
                )




              ],
            ),
          ),
          Column(

            children: [
              Container(
                  height: 95,
                  width: 370,
                  padding: const EdgeInsets.only(top: 0.0, left: 0.0, right:0.0,),
                  decoration: const BoxDecoration(
                    color: Colors.white,

                  ),
                  child: Row(

                    children: [
                      Container(
                        height: 95,
                        width: 140,
                        color: Colors.redAccent,
                        child: const Icon(Icons.person_rounded,
                          size: 56.0,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 38,),
                      TextButton(
                        style: TextButton.styleFrom(

                            minimumSize: Size(20, 20),
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  Profile())
                          );
                        },
                        child: const Text("Profile",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,

                            )
                        ),
                      ),
                      const SizedBox(width: 39,),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(

                            minimumSize: Size(20, 20),
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  Profile())
                          );
                        },
                        child: const Icon(Icons.arrow_forward_ios,
                          size: 36,
                          color: Colors.black,),
                      )


                    ],
                  )
              ),
              Container(
                  height: 90,
                  width: 370,
                  padding: const EdgeInsets.only(top: 0.0, left: 0.0, right:0.0,),
                  decoration: const BoxDecoration(
                    color: Colors.white,

                  ),
                  child: Row(

                    children: [
                      Container(
                        height: 100,
                        width: 140,
                        color: Colors.redAccent,
                        child: const Icon(Icons.history,
                          size: 56.0,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 37,),
                      TextButton(
                        style: OutlinedButton.styleFrom(

                            minimumSize: Size(20, 20),
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  Profile())
                          );
                        },
                        child: const Text("History",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,

                            )
                        ),
                      ),
                      const SizedBox(width: 33,),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(

                            minimumSize: Size(20, 20),
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const Homee())
                          );
                        },
                        child: const Icon(Icons.arrow_forward_ios,
                          size: 36,
                          color: Colors.black,),
                      )


                    ],
                  )
              ),
              Container(
                  height: 90,
                  width: 370,
                  padding: const EdgeInsets.only(top: 0.0, left: 0.0, right:0.0,),
                  decoration: const BoxDecoration(
                    color: Colors.white,

                  ),
                  child: Row(

                    children: [
                      Container(
                        height: 100,
                        width: 140,
                        color: Colors.redAccent,
                        child: const Icon(Icons.event_note_rounded,
                          size: 56.0,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 28,),
                      TextButton(
                        style: OutlinedButton.styleFrom(

                            minimumSize: Size(20, 20),
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  Guides())
                          );
                        },
                        child: const Text("Guidlines",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,

                            )
                        ),
                      ),
                      const SizedBox(width: 21,),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(

                            minimumSize: Size(20, 20),
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const Guides())
                          );
                        },
                        child: const Icon(Icons.arrow_forward_ios,
                          size: 36,
                          color: Colors.black,),
                      )


                    ],
                  )
              ),
              Container(
                  height: 90,
                  width: 370,
                  padding: const EdgeInsets.only(top: 0.0, left: 0.0, right:0.0,),
                  decoration: const BoxDecoration(
                    color: Colors.white,

                  ),
                  child: Row(

                    children: [
                      Container(
                        height: 100,
                        width: 140,
                        color: Colors.redAccent,
                        child: const Icon(Icons.settings,
                          size: 56.0,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 34,),
                      TextButton(
                        style: OutlinedButton.styleFrom(

                            minimumSize: Size(20, 20),
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  Setting())
                          );
                        },
                        child: const Text("Settings",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,

                            )
                        ),
                      ),
                      const SizedBox(width: 24,),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(

                            minimumSize: Size(20, 20),
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  Setting())
                          );
                        },
                        child: const Icon(Icons.arrow_forward_ios,
                          size: 36,
                          color: Colors.black,),
                      )


                    ],
                  )
              ),
              Container(
                  height: 140,
                  width: 370,
                  padding: const EdgeInsets.only(top: 0.0, left: 0.0, right:0.0,bottom: 35.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,

                  ),
                  child: Row(

                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.redAccent,

                          borderRadius: BorderRadius.only(

                            bottomRight: Radius.circular(60),
                          ),),
                        height: 140,
                        width: 140,
                        padding: const EdgeInsets.only(left: 6,right: 0,top: 0,bottom: 3.0),

                        child: const Icon(Icons.logout,
                          size: 56.0,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 38,),
                      TextButton(
                        style: OutlinedButton.styleFrom(

                            minimumSize: Size(20, 20),
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                         FirebaseAuth.instance.signOut();
                           Navigator.push(context,
                                   MaterialPageRoute(builder: (context) =>  const Signin())
                    );        
                         
                        },
                        child: const Text("Log out",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,

                            )
                        ),
                      ),
                      const SizedBox(width: 29,),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(

                            minimumSize: Size(20, 20),
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                           FirebaseAuth.instance.signOut();
                           Navigator.push(context,
                                   MaterialPageRoute(builder: (context) =>  const Signin())
                    );        
                        },
                        child: const Icon(Icons.arrow_forward_ios,
                          size: 36,
                          color: Colors.black,),
                      )


                    ],
                  )
              ),

            ],
          )
        ],
      )
  )
  ;}