import 'package:flutter/material.dart';
import 'home.dart';


class Noti extends StatefulWidget {
  const Noti({super.key});

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) => Scaffold(

    backgroundColor: const Color(0xFF69BEC5),
    body: Container(
    

      padding: const EdgeInsets.only(top: 50.0, left: 30.0, right: 30.0),
      child: Column(
        children: [
          Row(
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(

                    minimumSize: const Size(20, 20),
                    backgroundColor: const Color(0xFF69BEC5),
                    side: const BorderSide(color: Color(0xFF69BEC5))
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Homee())
                  );
                },
                child: const Icon(Icons.arrow_back,

                  size: 33.0,
                  color: Colors.black87,
                ),
              ),

            ],
          ),
          const SizedBox(height: 20,),
          Image.asset("images/272acf4c5698d3f8fe96b72ae4344c55.jpg",
            height: 210,


          ),
          const SizedBox(height: 30,),
          const Text("Notifications",
              style: TextStyle(
                color: Colors.black,

                fontSize: 26.0,
                fontWeight: FontWeight.bold,

              )
          ),
           const SizedBox(height: 20,),
          Card(



            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: const ListTile(
              leading: Icon(Icons.local_hospital,
                color: Colors.redAccent,
                size: 32,
              ),
              title:Text("thank you for your donation",
                  style: TextStyle(
                    color: Colors.black,

                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,

                  )
              ),
              subtitle:Text("1w",
                  style: TextStyle(
                    color: Colors.black,

                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,

                  )
              )
              ,

            ),

          ),
          const SizedBox(height: 4,),
          Card(



            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: const ListTile(
              leading: Icon(Icons.local_hospital,
                color: Colors.redAccent,
                size: 32,
              ),
              title:Text("thank you for your donation",
                  style: TextStyle(
                    color: Colors.black,

                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,

                  )
              ),
              subtitle:Text("1w",
                  style: TextStyle(
                    color: Colors.black,

                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,

                  )
              )
              ,

            ),

          ),




        ],
      ),


    ),


  );}