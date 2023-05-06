import'package:flutter/material.dart';
import 'ghidelines.dart';
import 'home.dart';


class Sory extends StatefulWidget {
  const Sory({super.key});

  @override
  State<Sory> createState() => _SoryState();
}

class _SoryState extends State<Sory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(

      
          children: [
            SizedBox(height: 50,),
             Center(child: Image.asset('images/broken.png',)),
              SizedBox(height: 60,),
              const Text(
                'We are sorry ! ',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
              ),  
              SizedBox(height: 10,),
              Container(
              margin: const EdgeInsets.symmetric(horizontal: 35,),
              child: const Text(
                'You are not fit to donate blood',
                style: TextStyle(fontSize:20 ),
            
              ),
            ),
            const SizedBox(height: 70,),
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
                
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => Guides(),),
                  );
                  
                
                }, 
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0, right:20.0, ),
               
                  child: Text(
                    'Guidelines',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      
                      
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                style: ButtonStyle(
                  
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    
                ),),
                  backgroundColor: MaterialStateProperty.all<Color>(
                   const  Color(0xFFFFFFFF),
                    
                  ),
                  fixedSize: MaterialStateProperty.all<Size>(const Size(377, 55),),
                  
                  
                ),
                
                onPressed: (){
                   Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const Homee())
                          );
                  
                
                }, 
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0, right:20.0, ),
               
                  child: Text(
                    'Back to home screen',
                    style: TextStyle(
                      color: Color(0xFFFC4B60),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      
                      
                    ),
                  ),
                ),
              ),
      
        ],
        ),
      ),
    );
  }
}