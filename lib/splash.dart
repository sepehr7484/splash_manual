import 'package:flutter/material.dart';
import 'package:splash_app/homepage.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _HomePageState();
}

class _HomePageState extends State<Splash> {
  bool isvisibel = false;
  animatedIcon() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        isvisibel = !isvisibel;
      });
    });
  }

  outnavigator() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    animatedIcon();
    outnavigator();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedOpacity(
          curve: Curves.easeInOutQuad,
          opacity: isvisibel ? 1 : 0,
          duration: Duration(seconds: 2),
          child: Image.asset(
            'assest/logo.jpg',
            width: 250,
            height: 200,
          ),
        ),
      ),
    );
  }
}
