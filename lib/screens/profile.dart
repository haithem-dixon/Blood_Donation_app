import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:hope/login.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color(0xFFFAFAFB),
    body: Container(
      padding: const EdgeInsets.only(top: 50.0,),
      child: ListView(
        children:[ Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
      
                      minimumSize: const Size(20, 20),
                      backgroundColor: Color(0xFFFAFAFB),
                      side: const BorderSide(color: Color(0xFFFAFAFB))
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios,
      
                    size: 30.0,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(width: 73.0,),
                const Text("Profile",
                    style: TextStyle(
                      color: Colors.black,
      
                      fontSize: 26.0,
                      fontWeight: FontWeight.w700,
      
                    )
                ),
                Expanded(child: Container()),
                const Icon(Icons.edit,
                  size: 30.0,
                  color: Colors.black87,
      
                )
      
      
      
              ],
            ),
      
            Container(
                padding: const EdgeInsets.only(top: 40.0),
                child: const CircleAvatar(
      
                    radius: 60.0,
                    backgroundImage: AssetImage("images/profile.png"),
      
                )
            ),
            const SizedBox(width: 68.0,height: 20.0,),
            const Text("Ghamoud Haithem",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
      
                )
      
            ),
            const SizedBox(height: 30.0,),
            Container(
                width: 300.0,
                height: 60.0,
                padding: const EdgeInsets.only(left: 17,right: 10,top: 0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
      
      
                    boxShadow:[
                      BoxShadow(
      
                        offset: Offset(0, 2),
                        blurRadius: 20.0,
                        color: Colors.black26,
                      )
                    ]
                ),
                child:  Row(
                  children:const  [
                    Icon(Icons.assignment_turned_in_outlined,
                      size: 30.0,
                      color: Colors.redAccent,),
                    SizedBox(width: 14.0,),
      
      
                    Text("Available to donate",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto-Bold.ttf',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
      
                        )
                    ),
                   
      
      
      
      
      
                  ],
                )
      
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 160.0,
                    height: 80.0,
                    padding: const EdgeInsets.only(left: 0,right: 5,top: 16,bottom: 10.0),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
      
      
                        boxShadow:[
                          BoxShadow(
      
                            offset: Offset(0, 2),
                            blurRadius: 20.0,
                            color: Colors.black26,
                          )
                        ]
                    ),
                    child:  Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.monitor_weight_outlined,
                              size: 30.0,
                              color: Colors.redAccent,),
                            const SizedBox(width: 20.0,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                              
                                 Text("Weight",
                                    style: TextStyle(
                                      color: Colors.black,
                                      //fontFamily: 'Roboto-Bold.ttf',
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w700,
                                    )
                                ),
                                SizedBox(height:2 ,),
                                Text("67Kg",
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      //fontFamily: 'Roboto-Bold.ttf',
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w700,
                                    ))
                              ],
                            ),
      
      
      
      
                          ],
                        ),
      
      
      
                      ],
                    )
                ),
                const SizedBox(width: 10.0,),
                Container(
                  width: 161.0,
                  height: 80.0,
                  padding: const EdgeInsets.only(left: 0,right: 5,top: 16,bottom: 10.0),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
      
      
                      boxShadow:[
                        BoxShadow(
      
                          offset: Offset(0, 2),
                          blurRadius: 20.0,
                          color: Colors.black26,
                        )
                      ]
                  ),
                  child:  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.height,
                            size: 30.0,
                            color: Colors.redAccent,
                          ),
                          const SizedBox(width: 20.0,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Height",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //fontFamily: 'Roboto-Bold.ttf',
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w700,
                                  )
                              ),
                              SizedBox(height: 2,),
                              Text("1.85m",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    //fontFamily: 'Roboto-Bold.ttf',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w700,
                                  )
                              )
                            ],
                          ),
      
                        ],
                      ),
      
                    ],
                  ),
      
                )
      
      
              ],
            ),
            const SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 160.0,
                    height: 80.0,
                    padding: const EdgeInsets.only(left: 0,right: 5,top: 16,bottom: 10.0),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
      
      
                        boxShadow:[
                          BoxShadow(
      
                            offset: Offset(0, 2),
                            blurRadius: 20.0,
                            color: Colors.black26,
                          )
                        ]
                    ),
                    child:  Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.monitor_heart_outlined,
                              size: 30.0,
                              color: Colors.redAccent,),
                            const SizedBox(width: 8.0,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                              
                                 Text("Life saved",
                                    style: TextStyle(
                                      color: Colors.black,
                                      //fontFamily: 'Roboto-Bold.ttf',
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w700,
                                    )
                                ),
                                SizedBox(height:2 ,),
                                Text("3",
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      //fontFamily: 'Roboto-Bold.ttf',
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w700,
                                    ))
                              ],
                            ),
      
      
      
      
                          ],
                        ),
      
      
      
                      ],
                    )
                ),
                const SizedBox(width: 10.0,),
                Container(
                  width: 161.0,
                  height: 80.0,
                  padding: const EdgeInsets.only(left: 0,right: 5,top: 16,bottom: 10.0),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
      
      
                      boxShadow:[
                        BoxShadow(
      
                          offset: Offset(0, 2),
                          blurRadius: 20.0,
                          color: Colors.black26,
                        )
                      ]
                  ),
                  child:  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.bloodtype,
                            size: 30.0,
                            color: Colors.redAccent,
                          ),
                          SizedBox(width: 3.0,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Blood group",
                                  style: TextStyle(
                                    color: Colors.black,
                                    //fontFamily: 'Roboto-Bold.ttf',
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w700,
                                  )
                              ),
                              SizedBox(height: 2,),
                              Text("A+",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    //fontFamily: 'Roboto-Bold.ttf',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w700,
                                  )
                              )
                            ],
                          ),
      
                        ],
                      ),
      
                    ],
                  ),
      
                )
      
      
              ],
            ),
            const SizedBox(height: 15.0,),
      
            Container(
                width: 350,
                height: 70.0,
                padding: const EdgeInsets.only(left: 17,right: 10,top: 10,bottom: 8),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
      
      
                    boxShadow:[
                      BoxShadow(
      
                        offset: Offset(0, 2),
                        blurRadius: 20.0,
                        color: Colors.black26,
                      )
                    ]
                ),
                child:  Row(
      
                  children: [
                    const Center (
                      child: Icon(Icons.calendar_month,
                        size: 30.0,
                        color: Colors.redAccent,),
                    ),
                    const SizedBox(width: 20.0,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("Date of birth"
                            ,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Roboto-Bold.ttf',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
      
                            )
                        ),
                        
                        Text("25-04-2002"
                            ,
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontFamily: 'Roboto-Bold.ttf',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
      
                            )
                        ),
      
                      ],
                    ),
      
      
      
      
      
      
      
      
                  ],
                )
      
            ),
            const SizedBox(height: 15.0,),
            Container(
                width: 350.0,
                height: 70.0,
                padding: const EdgeInsets.only(left: 17,right: 10,top: 10,bottom: 8),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
      
      
                    boxShadow:[
                      BoxShadow(
      
                        offset: Offset(0, 2),
                        blurRadius: 20.0,
                        color: Colors.black26,
                      )
                    ]
                ),
                child:  Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
                      children: const[
                        Icon(Icons.email_outlined,
                          size: 30.0,
                          color: Colors.redAccent,),
                      ],
                    ),
                    const SizedBox(width: 20.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
      
                      children: [
                        const Text("Email"
                            ,
      
      
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Roboto-Bold.ttf',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
      
                            )
                        ),
                        
                        Text(
                          user.email!,
                            style: const TextStyle(
                              color: Colors.redAccent,
                              fontFamily: 'Roboto-Bold.ttf',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
      
                            ),
                        ),
                      ],
                    ),
                  ],
                )
      
            ),
      
            const SizedBox(height: 15.0,),
            Container(
                width: 350,
                height: 70.0,
                padding: const EdgeInsets.only(left: 17,right: 10,top: 13),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
      
      
                    boxShadow:[
                      BoxShadow(
      
                        offset: Offset(0, 2),
                        blurRadius: 20.0,
                        color: Colors.black26,
                      )
                    ]
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.phone,
                      size: 30.0,
                      color: Colors.redAccent,),
                    const SizedBox(width: 20.0,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
      
                      children: const [
                         Text("Phone number"
                            ,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Roboto-Bold.ttf',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
      
                            )
                        ),
                        
                         Text("0555395043"
                            ,
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontFamily: 'Roboto-Bold.ttf',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
      
                            )
                        ),
      
                      ],
                    ),
      
      
      
      
      
                  ],
                )
      
            ),
           const  SizedBox(height: 50,),
           MaterialButton(
            onPressed: () => FirebaseAuth.instance.signOut(),

            color: Colors.redAccent,
            child: const Text(
              'Sign Out ',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),
            ),
           ),
           const  SizedBox(height: 50,),
          ],
        ),
        ],
      ),
    ),
  );
  }
}