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
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    // themeMode: ThemeMode.dark,
    debugShowCheckedModeBanner: false,
    home: FirstApp(),
  ));
}

class FirstApp extends StatelessWidget {
  List<_contactObject> _contactList = [
    _contactObject('https://randomuser.me/api/portraits/women/81.jpg', 'Ma Ma', '@mama'),
    _contactObject('https://randomuser.me/api/portraits/women/82.jpg', 'Su Su', '@susu'),
    _contactObject('https://randomuser.me/api/portraits/women/83.jpg', 'Mu Mu', '@mumu'),
    _contactObject('https://randomuser.me/api/portraits/women/84.jpg', 'Maw Maw', '@mawmaw'),
    _contactObject('https://randomuser.me/api/portraits/women/85.jpg', 'Mee Mee', '@meemee'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Contact List'),
      ),
      body: ListView.builder(
        itemCount: _contactList.length,
        itemBuilder: (BuildContext context, int position){
          return _contactListTile(_contactList[position]);
        }
      ),
    );
  }
  Widget _contactListTile(_contactObject contactObject){
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(contactObject.url)),
      title: Text(contactObject.name),
      subtitle: Text(contactObject.id),
      trailing: ElevatedButton(onPressed: (){}, child: Text('Follow')),
    );
  }
}

class _contactObject{
  String url;
  String name;
  String id;
  _contactObject(this.url, this.name, this.id);
}