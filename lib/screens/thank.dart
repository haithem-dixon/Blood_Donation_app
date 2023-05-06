import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'home.dart';

class Thank extends StatefulWidget {
  const Thank({super.key});

  @override
  State<Thank> createState() => _ThankState();
}

class _ThankState extends State<Thank> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
    @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _animationController.forward();
  }
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(

          child: IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.arrow_back,color: Colors.black,size: 30,),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
             
            Image.asset('images/like.png',),
            SizedBox(height: 50,),
            AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'Thank You',
              textStyle: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
              speed: const Duration(milliseconds: 600),
            ),
          ],
          totalRepeatCount: 1,
          pause: const Duration(seconds: 1),
          onFinished: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => Homee(),
              ),
            );
          },
        ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35,),
              child: const Text(
                'Your donation has been scheduled, we will remind you 1Day before your donation',
                style: TextStyle(fontSize:20 ),
            
              ),
            ),



          ],
        ),
      ),

    );
  }
}