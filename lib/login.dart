import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hope/home.dart';
import 'package:hope/signup.dart';
import 'package:hope/visiteur.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _emailController= TextEditingController();
    final _passController= TextEditingController();
    Future signIn() async{
      await FirebaseAuth.instance.signInWithEmailAndPassword
      (email: _emailController.text.trim(), password: _passController.text.trim(),);
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
        elevation: 0,
        backgroundColor: Colors.white,
       
        actions: [
          TextButton(
            onPressed: (){
               Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  const Visiteur())
                    );

            },
            child: const Text('Skip',
            style: TextStyle(
              fontFamily: 'roboto',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          ),
        ],

      ),
      
      body: Container(
        padding: const EdgeInsets.only(left:20,right: 20,),
        child: ListView(
          scrollDirection: Axis.vertical,
          children:[ 
            Column(
            
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Image.asset(
                'images/logo10.png',
                width: 250,
              ),
              const SizedBox(height: 90,),
             
              const Center(child: Text('Login',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.black87,),),),
              const SizedBox(height:30 ,),
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
                  controller: _emailController,
                decoration: InputDecoration(
                  
                  
                  hintText: '   Email',
                  hintStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize:19,color: Colors.grey, ),
                  prefixIcon: const Icon(Icons.email,color: Color(0xFFFC4B60),size: 28,),
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
               const SizedBox(height:15 ,),
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
                  controller: _passController,
                  obscureText: true,
                
                decoration: InputDecoration(
                  hintText: '   Password',
                  hintStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize:19,color: Colors.grey, ),
                  prefixIcon: const Icon(Icons.lock,color: Color(0xFFFC4B60),size: 28,),
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
              const  SizedBox(height:20 ,),
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
                
                onPressed:signIn,
                
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0, right:20.0, ),
               
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      
                      
                    ),
                  ),
                ),
              ),
               const SizedBox(height:5 ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   const Text(
                    'Dont have an account ??',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                   ),
                   TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),);
                    }, 
                    child: const Text('Sign up',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFFFC4B60)),),),
              
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
  