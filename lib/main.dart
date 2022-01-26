// @12.1 Flutter Set up in Android studio
// @12.2 Setting up in VS code
// @12.3 Flutter Basic UI (First App and Widget) => Widget , Material App Widget
// @12.4 Flutter Basic UI (AppBar , Icon, Floating action button)

import 'package:flutter/material.dart';

//Google => Material 
//Iphone => Cupertino
//Widget => stateless, stateful
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            print('Click');
        },
        child: Icon(Icons.access_alarm),
      ),
      body: const Center(child: Text('Hello')),
      appBar:  AppBar(
        centerTitle: true,
        actions: [
          Icon(Icons.settings,size: 30,color: Colors.red, ),
          Center(child: Text('Setting'))
        ],
        leading: FlutterLogo(),
        title: Text('First App'),
      )
    );
  }
}