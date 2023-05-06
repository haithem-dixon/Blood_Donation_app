import 'package:flutter/material.dart';
import 'home.dart';


class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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

          minimumSize: Size(20, 20),
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
            const SizedBox(height: 20,),
            Image.asset("images/settings (1).png",
              width: 84,
            ),
            const SizedBox(height: 17,),
           const  Text("Settings",
                style: TextStyle(
                  color: Colors.black,

                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,

                )
            ),

  const SizedBox(height: 40.0,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(

                minimumSize: const Size(300, 50),
                backgroundColor: Colors.white,
              ),


              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  Homee())
                );
              },
              child:    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.language_sharp,
                    size: 37,
                    color: Colors.redAccent,),

                  Text("Languages",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      )),

                  Icon(Icons.arrow_forward_ios,
                    size: 25,
                    color: Colors.black,
                  ),
                ],
              ),



            ),
            const SizedBox(height: 20.0,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(

                minimumSize: const Size(300, 50),
                backgroundColor: Colors.white,
              ),


              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  Homee())
                );
              },
              child:    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.settings_accessibility,
                    size: 37,
                    color: Colors.redAccent,),
                  SizedBox(width: 50,),
                  Text("Privacy policy",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(width: 47),
                  Icon(Icons.arrow_forward_ios,
                    size: 25,
                    color: Colors.black,
                  ),
                ],
              ),



            ),
            const SizedBox(height: 20.0,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(

                minimumSize: const Size(300, 50),
                backgroundColor: Colors.white,
              ),


              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  Homee())
                );
              },
              child:    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const  [
                  Icon(Icons.help,
                    size: 37,
                    color: Colors.redAccent,),

                  Text("Help",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      )),

                  Icon(Icons.arrow_forward_ios,
                    size: 25,
                    color: Colors.black,
                  ),
                ],
              ),



            ),
            const SizedBox(height: 20.0,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(

                minimumSize: const Size(300, 50),
                backgroundColor: Colors.white,
              ),


              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  Homee())
                );
              },
              child:    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const  [
                  Icon(Icons.no_accounts_rounded,
                    size: 37,
                    color: Colors.redAccent,),
                  SizedBox(width: 50,),
                  Text("Delete my account",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(width: 47),
                  Icon(Icons.arrow_forward_ios,
                    size: 25,
                    color: Colors.black,
                  ),
                ],
              ),



            ),
            const SizedBox(height: 20.0,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(

                minimumSize: const Size(300, 50),
                backgroundColor: Colors.white,
              ),


              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  Homee())
                );
              },
              child:    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.manage_accounts_rounded,
                    size: 37,
                    color: Colors.redAccent,),
                  SizedBox(width: 50,),
                  Text("Log out",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(width: 47),
                  Icon(Icons.arrow_forward_ios,
                    size: 25,
                    color: Colors.black,
                  ),
                ],
              ),



            ),



  const SizedBox(height: 30,),]),

  )

    ,);}