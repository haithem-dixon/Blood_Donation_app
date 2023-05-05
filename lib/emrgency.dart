import 'package:flutter/material.dart';
import 'package:hope/check.dart';
import 'package:hope/home.dart';
import 'package:hope/profile.dart';

class Emer extends StatefulWidget {
  const Emer({super.key});

  @override
  State<Emer> createState() => _EmerState();
}

class _EmerState extends State<Emer> {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    body: Container(
      padding: const EdgeInsets.only(top: 50.0, left: 30.0, right: 30.0),
      child: Column(
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
                   Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios,

                  size: 33.0,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(width: 73.0,),
            ],
          ),
          const SizedBox(height: 23.0,),
          const Center(child: Text("Emergency requests",
            style: TextStyle(
              color: Colors.black,
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),),


          const SizedBox(height: 20,),
          TextField(

            decoration: InputDecoration(

                hintText: "Search by name",
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
          Container(

            padding: const EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 0),
            height: 100,
            decoration: const BoxDecoration(
                color: Color(0xFFE9E9E9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),


                boxShadow:[
                  BoxShadow(

                    offset: Offset(0, 3),
                    blurRadius: 5.0,
                    color: Colors.black26,
                  )
                ]
            ),
            child: Card(
              color: const Color(0xFFE9E9E9),
              elevation: 0,





              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),


              ),

              child:  ListTile(


                leading: const CircleAvatar(
                    radius: 30
                    ,
                    backgroundImage: AssetImage("images/profile.png")
                ),
                title:const Text("Ghamoud Haithem",
                    style: TextStyle(
                      color: Colors.black,

                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,

                    )
                ),

                subtitle:const Text("Eulma - Setif",
                    style: TextStyle(
                      color: Colors.black54,

                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,

                    )
                ),
                trailing:  Container(
                  width: 80.0,
                  height: 40.0,
                  padding: const EdgeInsets.only(left: 9,right: 5,top: 0,bottom: 0),
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: const Center(
                    child: Text("Donate",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),

                ),

              ),

            ),
          ),
          const SizedBox(height: 20,),
          Container(

            padding: const EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 0),
            height: 100,
            decoration: const BoxDecoration(
                color: Color(0xFFE9E9E9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),


                boxShadow:[
                  BoxShadow(

                    offset: Offset(0, 3),
                    blurRadius: 5.0,
                    color: Colors.black26,
                  )
                ]
            ),
            child: Card(
              color: const Color(0xFFE9E9E9),
              elevation: 0,





              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),


              ),

              child:  ListTile(


                leading: const CircleAvatar(
                    radius: 30
                    ,
                    backgroundImage: AssetImage("images/profile.png")
                ),
                title:const Text("Ghamoud Haithem",
                    style: TextStyle(
                      color: Colors.black,

                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,

                    )
                ),

                subtitle:const Text("Eulma - Setif",
                    style: TextStyle(
                      color: Colors.black54,

                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,

                    )
                ),
                trailing:  Container(
                  width: 80.0,
                  height: 40.0,
                  padding: const EdgeInsets.only(left: 9,right: 5,top: 0,bottom: 0),
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: const Center(
                    child: Text("Donate",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),

                ),

              ),

            ),
          ),
          const SizedBox(height: 20,),
          Container(

            padding: const EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 0),
            height: 100,
            decoration: const BoxDecoration(
                color: Color(0xFFE9E9E9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),


                boxShadow:[
                  BoxShadow(

                    offset: Offset(0, 3),
                    blurRadius: 5.0,
                    color: Colors.black26,
                  )
                ]
            ),
            child: Card(
              color: const Color(0xFFE9E9E9),
              elevation: 0,





              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),


              ),

              child:  ListTile(


                leading: const CircleAvatar(
                    radius: 30
                    ,
                    backgroundImage: AssetImage("images/profile.png")
                ),
                title:const Text("Ghamoud Haithem",
                    style: TextStyle(
                      color: Colors.black,

                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,

                    )
                ),

                subtitle:const Text("Eulma - Setif",
                    style: TextStyle(
                      color: Colors.black54,

                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,

                    )
                ),
                trailing:  Container(
                  width: 80.0,
                  height: 40.0,
                  padding: const EdgeInsets.only(left: 9,right: 5,top: 0,bottom: 0),
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: const Center(
                    child: Text("Donate",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),

                ),

              ),

            ),
          ),
          const SizedBox(height: 20,),
          Container(

            padding: const EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 0),
            height: 100,
            decoration: const BoxDecoration(
                color: Color(0xFFE9E9E9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),


                boxShadow:[
                  BoxShadow(

                    offset: Offset(0, 3),
                    blurRadius: 5.0,
                    color: Colors.black26,
                  )
                ]
            ),
            child: Card(
              color: const Color(0xFFE9E9E9),
              elevation: 0,





              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),


              ),

              child:  ListTile(


                leading: const CircleAvatar(
                    radius: 30
                    ,
                    backgroundImage: AssetImage("images/profile.png")
                ),
                title:const Text("Ghamoud Haithem",
                    style: TextStyle(
                      color: Colors.black,

                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,

                    )
                ),

                subtitle:const Text("Eulma - Setif",
                    style: TextStyle(
                      color: Colors.black54,

                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,

                    )
                ),
                trailing:  Container(
                  width: 80.0,
                  height: 40.0,
                  padding: const EdgeInsets.only(left: 9,right: 5,top: 0,bottom: 0),
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: const Center(
                    child: Text("Donate",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),

                ),

              ),

            ),
          ),




        ],
      ),

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
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=> Homee()),
                  );
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


  );}