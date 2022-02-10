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

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _email = TextEditingController();
  String? name, age, address, phone, email;
  final _formKey = GlobalKey<FormState>();
  // final GlobalKey _formKey = GlobalKey<FormState>(); // has error in save
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Text('Enter Name *'),
                TextFormField(
                  onSaved: (name) {
                    this.name = name;
                  },
                  validator: (name) {
                    if (name == null || name.isEmpty) {
                      return 'Enter your name';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Enter age *'),
                TextFormField(
                  onSaved: (age) {
                    this.age = age;
                  },
                  validator: (name) {
                    if (name == null || name.isEmpty) {
                      return 'Enter your age';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your age',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Enter Address *'),
                TextFormField(
                  onSaved: (address) {
                    this.address = address;
                  },
                  validator: (name) {
                    if (name == null || name.isEmpty) {
                      return 'Enter your Address';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your Address',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Enter Phone *'),
                TextFormField(
                  onSaved: (phone) {
                    this.phone = phone;
                  },
                  validator: (name) {
                    if (name == null || name.isEmpty) {
                      return 'Enter your Phone';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your Phone',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Enter Email'),
                TextFormField(
                  controller: _email,
                  onSaved: (email) {
                    this.email = email;
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your Email',
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      _formKey.currentState!.save();
                      _formKey.currentState!.validate();
                      print(
                          '$name $age $address $phone $email'); // using variable
                      print(_email.text); // using textingeditingcontroller
                      // _formKey.currentState!.reset();
                    },
                    child: Text('Save'))
              ],
            )),
      ),
    );
  }
}
