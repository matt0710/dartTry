import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 18"),
      ),
      
      body: MyListView()._myListViewWithCustomIconCardAndTouchEvent(context)
      
    );
  }
  
}

class MyListView extends StatelessWidget{
  Widget myListView() {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('article 1'),
        ),
        ListTile(
          title: Text('article 2'),
        ),
        ListTile(
          title: Text('article 3'),
        ),
        ListTile(
          title: Text('article 4'),
        ),
        ListTile(
          title: Text('article 5'),
        ),
        ListTile(
          title: Text('article 6'),
        ),
      ],
    );
  }

  Widget myListViewBuilder(BuildContext contex){
    return ListView.builder(itemBuilder: (contex, index){
          return ListTile(
            title: Text('article number $index')
          );
      },
    );
  }


  Widget _myListViewWithCustomIconAndCard(BuildContext context) {
    final titles = [
      'alarm',
      'pics',
      'PDF collection',
      'camera',
      'giftcard',
      'edit',
      'adb',
      'zoom in',
      'zoom out'
    ];
    final icons = [
      Icons.access_alarm,
      Icons.collections,
      Icons.picture_as_pdf,
      Icons.camera,
      Icons.card_giftcard,
      Icons.mode_edit,
      Icons.adb,
      Icons.zoom_in,
      Icons.zoom_out
    ];
    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Card(
            child: ListTile(
              leading: Icon(icons[index], color: Colors.orange[800], size: 20),
              title: Text(titles[index]),
            ),
            elevation: 3,
            shape: StadiumBorder(
                side: BorderSide(
                  color: Colors.deepOrange,
                  width: 1.0,
                )));
      },
    );
  }

  Widget _myListViewWithCustomIconCardAndTouchEvent(BuildContext context) {
    final titles = [
      'alarm',
      'pics',
      'PDF collection',
      'camera',
      'giftcard',
      'edit',
      'adb',
      'zoom in',
      'zoom out'
    ];
    final icons = [
      Icons.access_alarm,
      Icons.collections,
      Icons.picture_as_pdf,
      Icons.camera,
      Icons.card_giftcard,
      Icons.mode_edit,
      Icons.adb,
      Icons.zoom_in,
      Icons.zoom_out
    ];
    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Card(
            child: ListTile(
              leading: Icon(icons[index], color: Colors.orange[800], size: 20),
              title: Text(titles[index]),
              onTap: (){print(titles[index]);},
            ),
            elevation: 3,
            shape: StadiumBorder(
                side: BorderSide(
                  color: Colors.deepOrange,
                  width: 1.0,
                )));
      },
    );
  }

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'assets',
        home: MyPage()
    );
  }
}

void main() => runApp(MyApp());