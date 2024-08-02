import 'package:flutter/material.dart';

void main(){
  runApp(Screen1());
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Center(
            child: Text("cat"),
          ),
        ),
        body: Align(
          alignment:Alignment.center,
          child: Image.asset("assets/cat.jpg"),
        ),
      ),
    );
  }
}
