import 'package:app1/main.dart';
import 'package:app1/utility.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Richtext1(),
    );
  }
}

class Richtext1 extends StatefulWidget {
  const Richtext1({super.key});

  @override
  State<Richtext1> createState() => _Richtext1State();
}

class _Richtext1State extends State<Richtext1> {
  bool a = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RichText"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "${Utility1.list1[0]}\n",style: TextStyle(fontSize: 40),recognizer: TapGestureRecognizer()..onTap=(){
                    setState(() {
                      a==true?a=false:a=true;
                    });
                  }),
                ],style: TextStyle(color: Colors.black,),
              ),
            ),
            a?Container(
              child: InkWell(child: Image.asset("assets/cat.jpg"),onTap: (){
                Utility1.playaudio();
              },),
            ):Container(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.home),
          onPressed: ()=>
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen1()))),
    );
  }
}
