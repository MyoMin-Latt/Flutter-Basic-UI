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


import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _name = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _address = TextEditingController();
  List<bool> _hobbyBool = [false, false, false];
  List<String> _hobbyList =['Reading', 'Swimming', 'Walking'];
  List<String> _genderList = ['Male', 'Female'];
  String _genderValue = 'Male';
  String _hobby = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Introduction to Stateful Widget'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _name,
                decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                controller: _password,
                // scrollPadding: EdgeInsets.all(0),
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // contentPadding: EdgeInsets.zero,
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.visibility)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _address,
                decoration: InputDecoration(
                    label: Text('Address'), hintText: 'Enter your address'),
                minLines: 2,
                maxLines: 5,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    // _address.text = '';
                  });
                },
                child: Text('Save')),
            CheckboxListTile(
              title: Text(_hobbyList[0]),
              value: _hobbyBool[0], onChanged: (check){
              setState(() {
                _hobbyBool[0] = check!;
              });
            }),
            CheckboxListTile(
              title: Text(_hobbyList[1]),
              value: _hobbyBool[1], onChanged: (check){
              setState(() {
                _hobbyBool[1] = check!;
              });
            }),
            CheckboxListTile(
              title: Text(_hobbyList[2]),
              value: _hobbyBool[2], onChanged: (check){
              setState(() {
                _hobbyBool[2] = check!;
              });
            }),
            Column(
              children: [
                RadioListTile(
                  title: Text('Male'),
                  value: _genderList[0], groupValue: _genderValue, 
                onChanged: (val){
                  setState(() {
                    // _genderValue = _genderList[0];
                    _genderValue = val.toString();
                  });
                }),
                RadioListTile(
                  title: Text('Female'),
                  value: _genderList[1], groupValue: _genderValue, 
                onChanged: (change){
                  setState(() {
                    _genderValue = change.toString();
                  });
                })
              ],
            ),
            Text(
                'Your information\nName is : ${_name.text}\nPassword is : ${_password.text}\nAddress is : ${_address.text}'
                '\nHobbies are : ${hobbyString()}'
                '\nGender is : ${_genderValue}')
          ],
        ),
      ),
    );
  }
  String? hobbyString(){
    String _hobby = '';
    for(int i=0; i<_hobbyBool.length; i++){
      print(i.toString() + 'number');
      if(_hobbyBool[i]){
        _hobby += _hobbyList[i] + " ";
      }      
    }
    return _hobby;
  }
}
