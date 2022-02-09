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
// @12.10 Flutter Basic UI (Wrap Widget), SingleChildScrollView, For Loop
// @12.11 Flutter Basic Widget(Button Part1), ElevatedButton.styleFrom()
// @12.12 Flutter Basic UI (Button Part 2)
// @12.13 Flutter Basic UI (Stack Layout), Positioned




import 'package:flutter/material.dart';

//Google => Material
//Iphone => Cupertino
//Widget => less ,ful
//debug //release // hybrid
//Container
//project file network memory
//Row Column Wrap Stack  ListVeiw GridView
//variable List Map Set
// 6 3 3
//position
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
       body: Stack(
         alignment: Alignment.center,
         clipBehavior: Clip.none,
         children: [
           Container(
             color: Colors.red,
             width: double.infinity,
             height: 200,
           ),
           Positioned(
             top : 150,
             left: 100,
             child: Container(
               color: Colors.green,
               width: 200,
               height: 100,
             ),
           ),
           const Text('Stack Lesson',
           style: TextStyle(color: Colors.white,fontSize: 20,
           fontWeight: FontWeight.bold),),
           Positioned(
             top: 220,
             left: 160,
             child: ElevatedButton(onPressed: (){}, 
             child: const Text('Buttton')))
         ],
       ),
      
       );
  }
  
}