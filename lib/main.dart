import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:hope/auth.dart';
import'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(const Hope());
}

class Hope extends StatelessWidget {
  const Hope({super.key});

  
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  _MyHope(),
     
    );
  }
}


class _MyHope extends StatefulWidget {
  const _MyHope();

  @override
  State<_MyHope> createState() => __MyHopeState();
}

class __MyHopeState extends State<_MyHope> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
    @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
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
    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              '',
              textStyle: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
              speed: const Duration(milliseconds: 90),
            ),
          ],
          totalRepeatCount: 1,
          pause: const Duration(seconds: 1),
          onFinished: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => const Auth(),
              ),
            );
          },
        ),
        
          
          Center(child: Image.asset('images/logo10.png',)),
        ],
        ),
      );
      
  
  }
}

     
    