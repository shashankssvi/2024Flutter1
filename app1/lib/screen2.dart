import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Audioplay(),
    );
  }
}

class Audioplay extends StatefulWidget {
  const Audioplay({super.key});

  @override
  State<Audioplay> createState() => _AudioplayState();
}

class _AudioplayState extends State<Audioplay> {

  List<String> list1 = ["cat.jpg","cat.jpg"];
  var audio = AudioPlayer();
  playaudio()async{
    await audio.play(AssetSource("cat1.mp3"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animals"),
      ),
      body:ListView.builder(itemCount: list1.length,itemBuilder: (context,index){
        return Align(
          alignment:Alignment.center,
          child: InkWell(
            child: Image.asset("assets/${list1[index]}"),
            onTap: () async{
              await playaudio();
            },
          ),
        );
      }),
    );
  }
}
