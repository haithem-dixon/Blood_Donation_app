import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hope/auth.dart';
import 'package:hope/login.dart';
import 'package:hope/visiteur.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _emailController= TextEditingController();
    final _passController= TextEditingController();
    Future signUp() async{
      await FirebaseAuth.instance.createUserWithEmailAndPassword
      (email: _emailController.text.trim(), 
      password: _passController.text.trim(),);
      Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  Auth())
                    );
    }
      @override
      void dispose(){
        super.dispose();
        _emailController.dispose();
        _passController.dispose();
      }
      
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(onPressed: (){
            Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  Visiteur())
                    );
          },
           child: Text('Skip',style: TextStyle(fontFamily: 'roboto',fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black,),))
        ],

      ),
      
      body: Container(
        padding: EdgeInsets.only(top: 10,left: 20,right:20),

         child:ListView(
          scrollDirection: Axis.vertical,

           children:[ 
            Column(
            
           
            children: [
              
              Image.asset(
                'images/logo10.png',
                width: 250,
              ),
              const Center(child: Text('Sign up',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black,),),),
              SizedBox(height:20 ,),
               Container(
                width: 360,
                height: 60,
                
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
         
                  ),
                  boxShadow: [BoxShadow(
                    offset: Offset(1, 3.5),
                    blurRadius: 3,
                    color: Colors.grey,
         
         
                  ),
                  ]
         
         
         
         
         
                
                   ),
                child:TextField(
              
                  decoration: InputDecoration(
                    hintText: '   Full name',
                    hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize:19,color: Colors.grey,),
                    prefixIcon: const Icon(Icons.account_box_outlined  , color: Color(0xFFFC4B60),),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                       borderSide: const BorderSide(color: Colors.blue),
                       borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),),
                SizedBox(height:15 ,),
         
         
               Container(
                width: 360,
                height: 60,
                
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
         
                  ),
                  boxShadow: [BoxShadow(
                    offset: Offset(1, 3.5),
                    blurRadius: 3,
                    color: Colors.grey,
         
         
                  ),
                  ]
         
         
         
         
         
                
                   ),
                child: TextField(
                decoration: InputDecoration(
                  hintText: '   Birth date',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize:19,color: Colors.grey,),
                  prefixIcon: const Icon(Icons.calendar_month ,color: Color(0xFFFC4B60),),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                     borderSide: const BorderSide(color: Colors.blue),
                     borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),),
              SizedBox(height:15 ,),
         
               Container(
                width: 360,
                height: 60,
                
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
         
                  ),
                  boxShadow: [BoxShadow(
                    offset: Offset(1, 3.5),
                    blurRadius: 3,
                    color: Colors.grey,
         
         
                  ),
                  ]
         
         
         
         
         
                
                   ),
                child:TextField(
                  controller: _emailController,
                decoration: InputDecoration(
                  hintText: '   Email',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize:19,color: Colors.grey,),
                  prefixIcon: const Icon(Icons.email,color: Color(0xFFFC4B60),),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                     borderSide: const BorderSide(color: Colors.blue),
                     borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),),
              SizedBox(height:15 ,),
         
         
               Container(
                width: 360,
                height: 60,
                
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
         
                  ),
                  boxShadow: [BoxShadow(
                    offset: Offset(1, 3.5),
                    blurRadius: 3,
                    color: Colors.grey,
         
         
                  ),
                  ]
         
         
         
         
         
                
                   ),
                child:TextField(
                  controller: _passController,
                  obscureText: true,
                
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize:19,color: Colors.grey,),
                  hintText: '   Password',
                  prefixIcon: const Icon(Icons.lock,color: Color(0xFFFC4B60),),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                     borderSide: const BorderSide(color: Colors.blue),
                     borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),),
              SizedBox(height:20 ,),
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
                  signUp();
                }, 
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0, right:20.0, ),
               
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      
                      
                    ),
                  ),
                ),
              ),
              SizedBox(height:5 ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   const Text(
                    'do you already have an account ?',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                   ),
                   TextButton(
                    onPressed: (){
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signin()),);
                    },
                     child: Text('login',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFFFC4B60)),),
                   ),
                   SizedBox(height: 20,),
               
                ],
              ),
             
              
               
            ],
                 ),
           ]
           
         ),
      ),
    );
  }
}