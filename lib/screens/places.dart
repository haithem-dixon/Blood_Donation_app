import 'package:flutter/material.dart';
import 'formul.dart';


class Places extends StatefulWidget {
  const Places({super.key});

  @override
  State<Places> createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: const Color(0xFFF5F5F5),
        leading: OutlinedButton(
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
        actions: [
          TextButton(onPressed: (){
             Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  Formul())  );

          }, 
          child: const Text('Skip',style: TextStyle(fontFamily: 'roboto',fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black,),))
        ],

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'images/places.png',
            width: 350,
          ),
          const Text(
            'Trusted places ? ',
            style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
          ),
           Container(
            margin: const EdgeInsets.symmetric(horizontal: 35,),
            child: const Text(
              'we will be your link between you and a safe place where you donate your blood',
              style: TextStyle(fontSize: 20,),
              ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  
              ),),
                backgroundColor: MaterialStateProperty.all<Color>(
                 const  Color(0xFFFC4B60),
                  
                ),
                fixedSize: MaterialStateProperty.all<Size>(const Size(200, 65),),
                
                
              ),
              
              onPressed: (){
                 Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  Formul())  );
                
                
              }, 
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0, right:20.0, ),
             
                child: Text(
                  'NEXT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                    
                    
                  ),
                ),
              ),
            ),

    
        ],
      ),
    );
  }
}
