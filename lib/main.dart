// @12.1 Flutter Set up in Android studio
// @12.2 Setting up in VS code
// @12.3 Flutter Basic UI (First App and Widget) => Widget , Material App Widget
// @12.4 Flutter Basic UI (AppBar , Icon, Floating action button)
// @12.5 Flutter Basic UI (TextWidget)
// @12.6 Flutter Basic UI (Container)
// @12.7 Flutter Basic UI(Image Widget)
// @12.8 Flutter Basic UI (Rich Text Widget)
// @12.9 Flutter Basic UI (Row and Column), Expanded, Flexible
//        Expanded => take all space, Flexible => take needed space


import 'package:flutter/material.dart';

//Google => Material
//Iphone => Cupertino
//Widget => less ,ful
//debug //release // hybrid
//Container
//project file network memory
//Row Column Stack ListVeiw GridView
//variable List Map Set
// 6 3 3
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
       body: Row(
         children: [
           Container(
             width: 50,
             height: 200,
             color: Colors.orange,
             child: Text('Hello'),
           ),
           Expanded(
             child: Container(
               width: 50,
               height: 200,
               color: Colors.green,
               child: Text('Hello' *100),
             ),
           ),
           Flexible(
             child: Container(  
               color: Colors.red,
               child: Text('Hello'),
               
             ),
           ),
         ],
       )

      
       );
  }
}

