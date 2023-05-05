import'package:flutter/material.dart';
import 'package:hope/rdv.dart';


 
class Formul extends StatefulWidget {
  const Formul({super.key});

  @override
  State<Formul> createState() => _FormulState();
}

class _FormulState extends State<Formul> {
   final List<int> _groupValue = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                      const Text(
                        'Check Eligibility ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
             
              Center(
                child: Image.asset(
                  'images/LOGO.png',
                  
                ),
              ),
              const SizedBox(
                height: 20,
                child: Divider(
                  color: Colors.black,
                  
                ),
              ),
              const DecoratedBox(
                 decoration: BoxDecoration(
                 border: Border(
                 bottom: BorderSide(
                 color: Colors.grey,
                 width: 1.0,
                  ),
                ),
              ),
            
                child:  Center(
                  child: Text(
                    '\nBlood Donor Questionnaire Form\n',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Text(
                ' Please answers the following questions correctly.This will help to protect you and the patient who receives your blood.',
                style: TextStyle(fontSize:18 ,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   const Text('Gender  : ', style: TextStyle(fontSize: 18,),),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('Male',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 21,
                            groupValue: _groupValue[10],
                            activeColor: Colors.blue,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[10] = value!;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('Female',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 22,
                            groupValue: _groupValue[10],
                            activeColor:Colors.blue ,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[10] = value!;
                              });
                            },
                          ),
                        ],
                      )

                ],

              ),
              

            
              const Text('1. Have you donated previously : ', style: TextStyle(fontSize: 18,),),
               
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('Yes',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 1,
                            groupValue: _groupValue[0],
                            activeColor: Colors.blue,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[0] = value!;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('No',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 2,
                            groupValue: _groupValue[0],
                            activeColor:Colors.blue ,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[0] = value!;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                  const Text(
                  '2. Have you had any tattoos in the past 6 months ?',
                  style: TextStyle(fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('Yes',style: TextStyle(fontSize: 18),),
                        Radio<int>(
                          value: 3,
                          groupValue: _groupValue[1],
                          activeColor: Colors.blue,
                          onChanged: (value) {
                            setState(() {
                              _groupValue[1] = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('No',style: TextStyle(fontSize: 18),),
                        Radio<int>(
                          value: 4,
                          groupValue: _groupValue[1],
                          activeColor: Colors.blue,
                          onChanged: (value) {
                            setState(() {
                              _groupValue[1] = value!;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
                   const Text(
                    '3. Have you ever been deferred from donating blood due to a medical condition or other factor?',
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('Yes',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 5,
                            groupValue: _groupValue[2],
                            activeColor: Colors.blue,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[2] = value!;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('No',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 6,
                            groupValue: _groupValue[2],
                            activeColor: Colors.blue,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[2] = value!;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                  const Text(
                    '4. Are you between 18 and 60 years old?',
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('Yes',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 7,
                            groupValue: _groupValue[3],
                            activeColor: Colors.blue,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[3] = value!;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('No',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 8,
                            groupValue: _groupValue[3],
                            activeColor: Colors.blue,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[3] = value!;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                  const Text(
                    '5. If you are a woman, are you pregnant?',
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('Yes',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 9,
                            groupValue: _groupValue[4],
                            activeColor: Colors.blue,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[4] = value!;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('No',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 10,
                            groupValue: _groupValue[4],
                            activeColor: Colors.blue,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[4] = value!;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                  const Text(
                    '6. Are you breastfeeding?',
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('Yes',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 11,
                            groupValue: _groupValue[5],
                            activeColor: Colors.blue,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[5] = value!;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('No',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 12,
                            groupValue: _groupValue[5],
                            activeColor: Colors.blue,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[5] = value!;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                   const Text('7. Your weight is  : ', style: TextStyle(fontSize: 18,),),
               
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('< 50kg',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 13,
                            groupValue: _groupValue[6],
                            activeColor: Colors.blue,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[6] = value!;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('>= 50kg',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 14,
                            groupValue: _groupValue[6],
                            activeColor:Colors.blue ,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[6] = value!;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                  const Text('8. Do you have chronichs sicks : ', style: TextStyle(fontSize: 18,),),
               
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('Yes',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 15,
                            groupValue: _groupValue[7],
                            activeColor: Colors.blue,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[7] = value!;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('No',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 16,
                            groupValue: _groupValue[7],
                            activeColor:Colors.blue ,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[7] = value!;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                  const Text('9. Do you have cancer: ', style: TextStyle(fontSize: 18,),),
               
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('Yes',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 17,
                            groupValue: _groupValue[8],
                            activeColor: Colors.blue,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[8] = value!;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('No',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 18,
                            groupValue: _groupValue[8],
                            activeColor:Colors.blue ,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[8] = value!;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                  const Text('10. Do you had a surgical operation before : ', style: TextStyle(fontSize: 18,),),
               
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('Yes',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 19,
                            groupValue: _groupValue[9],
                            activeColor: Colors.blue,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[9] = value!;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text('No',style: TextStyle(fontSize: 18),),
                          Radio<int>(
                            value: 20,
                            groupValue: _groupValue[9],
                            activeColor:Colors.blue ,
                            onChanged: (value) {
                              setState(() {
                                _groupValue[9] = value!;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
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
                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  BookingScreen())
                    );
                  
                
                }, 
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0, right:20.0, ),
               
                  child: Text(
                    ' Verify',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      
                      
                    ),
                  ),
                ),
              ),




                 
            
                  SizedBox(height: 50,),

            
                ],
              ),
            ),
            
          ],
        )
      ),

    );
  }
}