import 'package:flutter/material.dart';
import 'package:hope/sory.dart';

class Guides extends StatefulWidget {
  const Guides({super.key});

  @override
  State<Guides> createState() => _GuidesState();
}

class _GuidesState extends State<Guides> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:  Container(
            margin:const EdgeInsets.only(top: 12,bottom:10),
            child: IconButton(
              icon: const Icon( 
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sory(),),
                );
              },
            ),
          ),
      ),
      
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50,),
        child: ListView(
          scrollDirection: Axis.vertical,
          children:  const [
            SizedBox(height: 20,),
            Text(
              'Guidelines for donation ',
              style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50,),
            Text(
              '  - Who can donate blood :',
              style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Text(
              '  \n To donate blood you need to: \n'
              '  \n'
              '- be generally fit and well \n' 
              '\n'
              '- be aged between 17 and 65 \n'
              '\n'
              '- weigh between 7 stone 12 lbs \n \t (50kg) and 25 stone (158kg) \n'
              '\n'
              '- have suitable veins (we will check \n \t these before you donate)\n'
              '\n'
              '- meet all donor eligibility criteria \n \t (we will check this with you \n \t before you donate)',
              style: TextStyle(fontSize: 20,),
            ),
            SizedBox(height: 50,),
            Text(
              '  - Who cant donate blood :',
              style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Text(
              '  \n You cant donate blood if you: \n '
              '\n'
              '- have had most types of cancer \n'
              '\n'
              '- have some heart conditions \n'
              '\n'
              '- have received : \n \t blood,  platelets,plasma  or any \n \t other blood products after \n \t 1 January 1980 \n'
              '- have tested positive for HIV\n'
              '\n'
              '- have had an organ transplant \n'
              '\n'
              '- are a hepatitis B carrier\n'
              '\n'
              '- are a hepatitis C carrier\n'
              '\n'
              '- have injected non-prescribed  \n \t drugs including body-building \n \t and injectable tanning agents. \n \t You may be able  to give if \n \t a doctor prescribed the drugs.',


              style: TextStyle(fontSize: 20,),
            ),
            SizedBox(height: 50,),




          ],
        ),
      ),
    );
  }
}