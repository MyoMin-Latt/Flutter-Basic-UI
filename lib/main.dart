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
// @12.16 Flutter Basic UI (GridView) SliverGridDelegateWithFixedCrossAxisCount



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
    debugShowCheckedModeBanner: false,
    home: FirstApp(),
  ));
}

class FirstApp extends StatelessWidget {
  final List<String> _items = List.generate(1000, (index) => "Item $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 50,
              // childAspectRatio: 3/1,
              crossAxisCount: 2,
                mainAxisSpacing: 3.0,
                crossAxisSpacing: 3.0
            ),
            // itemCount: 10,
            itemBuilder: _item),
            );
  }

  Widget _item(BuildContext context, int index) {
    if(index %7 == 0){
      return ElevatedButton(onPressed: (){
         ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(_items[index])));

      }, child: Text(_items[index]));
    }
    return
     InkWell(
      onTap: (){
        ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(_items[index])));
      },
      child: Card(
        margin: EdgeInsets.zero,
        child: Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: Text(_items[index])),
      ),
    );
  }
}

