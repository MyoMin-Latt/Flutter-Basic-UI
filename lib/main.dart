// @12.1 Flutter Set up in Android studio
// @12.2 Setting up in VS code
// @12.3 Flutter Basic UI (First App and Widget) => Widget , Material App Widget
// @12.4 Flutter Basic UI (AppBar , Icon, Floating action button)
// @12.5 Flutter Basic UI (TextWidget)
// @12.6 Flutter Basic UI (Container)
// @12.7 Flutter Basic UI(Image Widget)
// @12.8 Flutter Basic UI (Rich Text Widget)


import 'package:flutter/material.dart';

//Google => Material
//Iphone => Cupertino
//Widget => less ,ful
//debug //release // hybrid
//Container
//project file network memory
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstApp(),
  ));
}

class FirstApp extends StatelessWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
       body: Center(
         child: 
        //  Text.rich(RichText)
         RichText(
           text: const TextSpan(
             children: [
               TextSpan(text: 'H',style: TextStyle(color : Colors.blue,fontSize: 25),),
               TextSpan(text: 'E',style: TextStyle(color : Colors.red,fontSize: 35)),
               TextSpan(text: 'L',style: TextStyle(color : Colors.green,fontSize: 35)),
               TextSpan(text: 'L',style: TextStyle(color : Colors.pink,fontSize: 35)),
               TextSpan(text: 'O',style: TextStyle(color : Colors.black,fontSize: 35)),
             ]
           ),
         ),
       )
       );
  }
}