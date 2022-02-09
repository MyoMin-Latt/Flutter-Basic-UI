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
         child: Column(
           children: [
             ElevatedButton.icon(
               icon: Icon(Icons.add_a_photo),
               onPressed: (){
                    clickAction(context);
               }, 
               onLongPress: () => print('long press'),
               style: ElevatedButton.styleFrom(
                 primary: Colors.red,
                 onPrimary: Colors.white,

               ),
               label: const Text('Elevated Buttton Clcik')),
             OutlinedButton(
               style: OutlinedButton.styleFrom(
                 primary: Colors.red,
                 side: const BorderSide(
                   color: Colors.red,
                   width: 3
                 )
                 
               ),
               onPressed: (){
             }, 
             child: const Text('Outlined Button')),
             TextButton(
               style: TextButton.styleFrom(
                 primary: Colors.black
               ),
               onPressed: (){
             }, child: const Text('Text Button'))
           ],
         ),
       )
       );
  }
  void clickAction(BuildContext context){
    ScaffoldMessenger.of(context)
    .showSnackBar(
      
      const SnackBar(
        backgroundColor: Colors.blue,
        content: Text('Elevated Button is Clicked'))
    );
  }
}