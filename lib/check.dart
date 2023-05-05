import 'package:flutter/material.dart';
import 'package:hope/formul.dart';
import 'package:hope/schedule.dart';

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading:  OutlinedButton(
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
          child: Text('Skip',style: TextStyle(fontFamily: 'roboto',fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black,),))
        ],

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children: [
          Image.asset(
            'images/check.png',
            width: 300,
          ),
          const Text(
            'Check eligibility',
            style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
          ),
           Container(
           
             margin: EdgeInsets.symmetric(horizontal: 35,),
            child: const Text(
              ' Tack a quick self assessment test to know if you are fit enough to donate bolod by answering a  few simple questions',
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
                
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Schedule()),);
                
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