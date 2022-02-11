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
// @12.13 Flutter Basic UI (Stack Layout), Positioned, container
// @12.14 (Stack interactive UI) https://youtu.be/buhVyKjkDtY
// @12.15 Flutter Basic UI (ListView & Card Widget) Inkwell
// @12.16 Flutter Basic UI (GridView) SliverGridDelegateWithMaxCrossAxisExtent, SliverGridDelegateWithFixedCrossAxisCount
// @12.17 Practical UI Building [Contact List UI)
//        https://randomuser.me/photos, https://flutterawesome.com/searchable-listview-with-flutter/

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

// @12.18 Flutter Basic UI (Introduction to Stateful Widget)
// @12.19 Flutter Basic UI [TextField Widget]
// @12.20 Flutter Basic UI [CheckBox Widget] forloop
// @12.21 Flutter Basic UI (Radio Button Widget)
// @12.22 Flutter Basic UI [Progress Indicator] Determinate and indeterminate inidicator
//        Increase value in the state but cannot increase value in the build
// @12.23 Flutter Basic UI [Slider Widget]
//        Continuous sliders, Discrete sliders, Range slider, SliderTheme in MaterilApp
// @12.24 Flutter Basic UI (Switch Widget) ternary operator
// @12.25 Flutter Basic UI (Form Widget) globalkey

// @12 HW1 [HomeWork Login UI]


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(child: Container(color: Colors.white,)),
          Image.network('https://raw.githubusercontent.com/Rubywai/rubylearner_homework/main/Login_Ui/images/background.png'),
          Positioned(
            left: 30,
            child: Image.network('https://github.com/Rubywai/rubylearner_homework/blob/main/Login_Ui/images/light-1.png?raw=true')),
          Positioned(
            top: -20,
            left: 150,
            child: Image.network('https://github.com/Rubywai/rubylearner_homework/blob/main/Login_Ui/images/light-2.png?raw=true')),
          Positioned(
            right: 45,
            top: 70,
            child: Image.network('https://raw.githubusercontent.com/Rubywai/rubylearner_homework/main/Login_Ui/images/clock.png')),
          Positioned(
            top: 160,
            right: 100,
            // left: 0,
            
            child: Text('Login', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),)),
          
          Positioned(
            left: 30,
            right: 30,
            bottom: 20,
            child: Column(
              children: [
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Email or Phone number',
                        ),
                      ),
                      SizedBox(height: 8),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Password'
                        ),
                      ),
                      
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(143, 148, 251, 1),
	                          Color.fromRGBO(143, 148, 251, .6),
                    ])
                  ),
                  child: Center(child: Text('Login', style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold,
                    color: Colors.white),)),
                ),
                SizedBox(height: 40,),

                TextButton(onPressed: (){}, 
                child: Text('Forgot Password?',
                style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),))
              ],
            ),
          ),
          
         
        ],
      ),
    );
  }
}