// @12.1 Flutter Set up in Android studio
// @12.2 Setting up in VS code
// @12.3 Flutter Basic UI (First App and Widget) => Widget , Material App Widget

import 'package:flutter/material.dart';

//Google => Material 
//Iphone => Cupertino
//Widget => less ,ful
//debug //release // hybrid
void main(){
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstApp(),
    )
  );
}
class FirstApp extends StatelessWidget {
  const FirstApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar:  AppBar(
        
      )
    );
  }
}