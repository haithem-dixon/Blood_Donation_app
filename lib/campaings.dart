import 'package:flutter/material.dart';
import 'package:hope/home.dart';
import 'package:hope/profile.dart';


class Visit extends StatefulWidget {
  const Visit({super.key});

  @override
  State<Visit> createState() => _VisitState();
}

class _VisitState extends State<Visit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        elevation: 0.5,
         backgroundColor: Colors.white,
         
          title: Container(
            margin: const EdgeInsets.only(top: 20,bottom: 10),
            child: const Text(
               
              'Campaigns & events ',
              style: TextStyle(
                
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          leading: Container(
            margin:const EdgeInsets.only(top: 12,bottom:10),
            child: IconButton(
              icon: const Icon( 
                Icons.arrow_back,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: (){
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  const Homee())
                    );
              },
            ),
          ),
                 
        ),

        
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
              Image.asset('images/visit1.png'),
              Column(
                children:   [
                  Text('Blood donation camp',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),),
                  Text('Setif hospital',style: TextStyle(fontSize: 16.0),),
                  Text('Thursday, 15 april 2023',style: TextStyle(fontSize: 16.0),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),),),
                          
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: (){

                        },
                        child: const Text(
                          'Volunteer',
                          style: TextStyle(
                            fontFamily: 'roboto',
                            fontSize: 12.0,
                            color: Color(0xFFFC4B60),

                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0,),
                      ElevatedButton(
                        style: ButtonStyle(
                           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),),),
                          backgroundColor: MaterialStateProperty.all<Color>(const Color (0xFFFC4B60)),
                        ),
                        onPressed: (){

                        },
                        child: const Text(
                          'Donate',
                          style: TextStyle(
                            fontFamily: 'roboto',
                            fontSize: 12.0,
                            color: Colors.white,

                          ),
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),

             ],
              
            ),
            const SizedBox(
              width: 365.0,
              child: Divider(
                color: Color(0xFF707070)
              ),
            ),
            //2ND ROW______________________________________________________________
            //2ND ROW______________________________________________________________
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
              Image.asset('images/visit2.png'),
              Column(
                children:   [
                  Text('Blood donation camp', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),),
                  Text('Ain-oulman hospital', style: TextStyle(fontSize: 16.0),),
                  Text('Friday, 18 april 2023', style: TextStyle(fontSize: 16.0),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),),),
                          
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: (){

                        },
                        child: const Text(
                          'Volunteer',
                          style: TextStyle(
                            fontFamily: 'roboto',
                            fontSize: 12.0,
                            color: Color(0xFFFC4B60),

                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0,),
                      
                      ElevatedButton(
                        style: ButtonStyle(
                           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),),),
                          backgroundColor: MaterialStateProperty.all<Color>(const Color (0xFFFC4B60)),
                        ),
                        onPressed: (){

                        },
                        child: const Text(
                          'Donate',
                          style: TextStyle(
                            fontFamily: 'roboto',
                            fontSize: 12.0,
                            color: Colors.white,

                          ),
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),

             ],
              
            ),
                        const SizedBox(
              width: 365.0,
              child: Divider(
                color: Color(0xFF707070)
              ),
            ),
            //3RD ROW_____________________________________________________
            //3RD Row_____________________________________________________________
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
              Image.asset('images/visit3.png'),
              Column(
                children:   [
                  Text('Blood donation camp',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),),
                  Text('El-Euelma hospital',style: TextStyle(fontSize: 16.0),),
                  Text('Wednesday, 02 may 2023',style: TextStyle(fontSize: 16.0),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),),),
                          
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: (){

                        },
                        child: const Text(
                          'Volunteer',
                          style: TextStyle(
                            fontFamily: 'roboto',
                            fontSize: 12.0,
                            color: Color(0xFFFC4B60),

                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0,),
                      ElevatedButton(
                        style: ButtonStyle(
                           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),),),
                          backgroundColor: MaterialStateProperty.all<Color>(const Color (0xFFFC4B60)),
                        ),
                        onPressed: (){

                        },
                        child: const Text(
                          'Donate',
                          style: TextStyle(
                            fontFamily: 'roboto',
                            fontSize: 12.0,
                            color: Colors.white,

                          ),
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),

             ],
              
            ),
          ],
        ),
       
      ),
      bottomNavigationBar:BottomAppBar(
        elevation: 0,
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.home_outlined),
                iconSize: 45.0,
                color: Colors.black87,
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const Homee(),));

                },
                
              ),
              IconButton(
                icon: const Icon(Icons.person_2_outlined),
                iconSize: 45.0,
                color: Colors.black87,
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile(),));

                },
                
              ),

            ],
          ),
          
          
        ),
      ),
      
    

    );
  }
}