import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
          maintainBottomViewPadding: true,
          top: true,
          child: Center(
            child: Column(
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Onpress')),
              ],
            ),
          )),
    );
  }
}
