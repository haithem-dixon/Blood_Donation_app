import 'package:flutter/material.dart';
import 'package:hope/login.dart';
import 'visiteur.dart';



class Next extends StatefulWidget {
  const Next({super.key});

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('images/blood.jpg',),
           const Text(
            'Donate Blood, Save lives',
            style:TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'alkatra',
              fontSize: 27.0,
              color: Color(0xFFFC4B60),

            ),
          ),
          const SizedBox(height: 5.0,),
          const Padding(
            padding: EdgeInsets.only(left: 45.0, right: 20.0,),
            child: Text(
              'Simplyfy the process of blood donation and managing. helping people had never been such easy ! ',
              style: TextStyle(
                fontFamily: 'alkatra',
                fontSize: 19.0,
                fontWeight: FontWeight.w500,
                color: Color(0xFF1B2E35),
              ),
            ),
          ),
          const SizedBox(height: 10.0,),
           ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  
              ),),
              backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFFFC4B60)
                  ),
                   fixedSize: MaterialStateProperty.all<Size>(const Size(283, 65),),
            ),


            onPressed: (){
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Visiteur()),); 
              }, 
            child: const Text(
              "Let's Go!",
              style: TextStyle(
                fontFamily: 'alkatra',
                fontSize: 25.0,
                fontWeight: FontWeight.w900,
                color: Colors.white,
           
              ),
            ),
           ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '  already registered ?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),

              ),
              TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Signin()),);
                 }, 
                child: const Text('Login',
                style: TextStyle(color: Color(0xFFFA7584),fontSize: 20.0,fontWeight: FontWeight.bold),
                ),
              ),
              

            ],
           ),
           const SizedBox(height: 20.0,),
           
          
            ],
          ),
        ),
        
      );
  }
}

