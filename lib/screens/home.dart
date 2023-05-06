import 'package:flutter/material.dart';
import 'check.dart';
import 'emrgency.dart';
import 'formul.dart';
import 'menu.dart';
import 'notifications.dart';
import 'friends.dart';
import 'profile.dart';
import 'campaings.dart';


class Homee extends StatefulWidget {
  const Homee({super.key});

  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  @override
  Widget build(BuildContext context) => Scaffold(

    backgroundColor: Colors.white,
    body: Container(
        padding: const EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0,),
        child: ListView(
          children: [

        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [

                OutlinedButton(
                  style: OutlinedButton.styleFrom(

                    minimumSize: const Size(20, 20),
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.white)
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Menuu())
                    );
                  },
                  child: const Icon(Icons.menu,
                    color: Colors.black,
                    size: 30.0,),
                ),

                const SizedBox(width: 220.0,),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(

                        minimumSize: const Size(20, 20),
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white)
                    ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Noti())
                    );
                  },
                  child: const Icon(Icons.notifications,
                    color: Colors.black,
                    size: 30.0,
                  )

                ),

              ],

            ),
            const SizedBox(height: 19,),
             Row(
              children: const [
               CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage("images/profile.png")
                ),
                SizedBox(width: 10,),
                Text("Welcome,",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    )
                ),
                SizedBox(width: 4,),
                Text("Haithem!",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
            const SizedBox(height: 30.0,),

            TextField(

              decoration: InputDecoration(

                  hintText: "Search by Hospital or  blood group",
                  hintStyle: const TextStyle(fontWeight: FontWeight.w400),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16, ),

                  prefixIcon: const Icon(
                    Icons.search,
                    size: 27,
                    color: Colors.grey,

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30),

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  )
              ),
            ),

            const SizedBox(height: 30,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                 Text("Compaings & events",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(width: 10,),
                Icon(Icons.arrow_forward_ios,
                  size: 27,
                  color: Colors.redAccent,
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 150.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(

                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),


              ),
            ),
            child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(height: 110,
                width: 180,
                child: IconButton(

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Visit()),);

                  },
                  icon: Image.asset('images/_107408436_blooddonationman.jpg',


                  ),
                ),
              ),




              Container(height: 110,
                width: 180,
                child: IconButton(

                  onPressed: () {},
                  icon: Image.asset('images/272acf4c5698d3f8fe96b72ae4344c55.jpg',

                  ),
                ),
              ),

              Container(
                height: 110,
                width: 180,
                child: IconButton(

                  onPressed: () {},
                  icon: Image.asset('images/4a41b33bf3dc2eef92dae829b42e3633.jpg',

                  ),
                ),
              ),

              Container(height: 110,
                width: 180,
                child: IconButton(

                  onPressed: () {},
                  icon: Image.asset('images/17f56cc7e98544b843e146b06f5b282e.jpg',

                  ),
                ),
              ),

            ],
            )
            ),




            const SizedBox(height: 10,),
            ElevatedButton(
             style: ButtonStyle(
                  
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    
                ),),
                  backgroundColor: MaterialStateProperty.all<Color>(
                   const  Color(0xFFFC4B60),
                    
                  ),
                  fixedSize: MaterialStateProperty.all<Size>(const Size(377, 55),),
                  
                  
                ),


                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  Friend())
                  );
                },
                child:    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.people_rounded,
                        size: 30,
                        color: Colors.white,),
                      
                      Text("Donate with friends   ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          )),
                      
                      Icon(Icons.arrow_forward_ios,
                        size: 25,
                        color: Colors.white,
                      ),
                    ],
                  ),



            ),


            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                    fixedSize: MaterialStateProperty.all<Size> (const Size(150,190
                    ),),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),


                  ),


                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  Emer())
                    );
                  },

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 7,top: 10.0,right: 11),
                          child: const CircleAvatar(
                            backgroundImage: AssetImage("images/4a41b33bf3dc2eef92dae829b42e3633.jpg"),
                            radius: 40.0,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Text("Emergency requests",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Container(
                          padding: const EdgeInsets.only(left: 30,top: 10.0,right: 11),
                          child:  Row(
                            children: const [
                              Text("9 cases",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios,
                                size: 18,
                                color: Colors.redAccent,),

                            ],
                          ),
                        ),
                        const SizedBox(height: 10,),



                      ],
                    ),



                ),
                const SizedBox(width: 20,),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                    fixedSize: MaterialStateProperty.all<Size> (const Size(150,190
                    ),),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),


                  ),


                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) =>  Formul())
                    );
                  },

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 7,top: 10.0,right: 11),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage("images/4a41b33bf3dc2eef92dae829b42e3633.jpg"),
                          radius: 40.0,
                        ),
                      ),
                    const SizedBox(height: 5,),
                      const Text("Test",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Container(
                        padding: const EdgeInsets.only(left: 0,top: 10.0,right: 0),
                        child: const Text("  Answer questions ",

                         style: TextStyle(
                           color: Colors.redAccent,
                           fontSize: 13.0,
                           fontWeight: FontWeight.bold,
                         ),
                            ),
                      ),
                      const SizedBox(height: 10,),



                    ],
                  ),



                ),




              ],
            ),
            const SizedBox(height: 50,),






          ],
        )
        ]
        )


    ),
    bottomNavigationBar: Container(
      height: 70,
      child: BottomAppBar(
        elevation: 0,
        child: Container(
          height:50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: (){

                },
                icon: const Icon(Icons.home_outlined,
                  color: Colors.black87,

                ),iconSize: 45,),
              CircleAvatar(


                radius: 30,
                backgroundColor: const Color(0xFFFC4B60),
                child: IconButton(
                  onPressed: (){
                     Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  Check())
                );
                  },
                  icon: const Icon(Icons.add),
                  iconSize: 38,

                  color: Colors.white,
                ),
              ),
              IconButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  Profile())
                );


              }, icon: const Icon(Icons.person_2_outlined,),iconSize:45,),
            ],

          ),

        ),

      ),
    ),





  );
}