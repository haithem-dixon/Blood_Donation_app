import 'package:flutter/material.dart';
import 'package:hope/formul.dart';
import 'package:hope/places.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        actions: [
          TextButton(onPressed: (){
             Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  Formul())  );

          }, 
          child: Text('Skip',style: TextStyle(fontFamily: 'roboto',fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black,),))
        ],

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'images/sche.png',
            width: 300,
          ),
          const Text(
            'Schedule appointment',
            style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
          ),
           Container(
            margin: EdgeInsets.symmetric(horizontal: 35,),
            child: const Text(
              'Pick a date and time that is suitable for you to donate with ease',
              
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
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Places()),); 
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