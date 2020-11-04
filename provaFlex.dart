import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Winery'),
        backgroundColor: Colors.purple,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50,),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3, // 60% of space => (6/(6 + 4))
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex: 7, // 40% of space
                    child: Container(
                      color: Colors.blue,
                      child: Text('buonanotte fiorellino'),
                    ),
                  )
                ],
              ),
            ),
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3, // 60% of space => (6/(6 + 4))
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    flex: 7, // 40% of space
                    child: Container(
                      color: Colors.black38,
                    ),
                  )
                ],
              ),
            ),
            Container(
              constraints: BoxConstraints.expand(height: 50),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3, // 60% of space => (6/(6 + 4))
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                    flex: 7, // 40% of space
                    child: Container(
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
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
/*return Scaffold(
      appBar: AppBar(
        title: Text('Winery'),
      ),

      body: SingleChildScrollView(
        child: Flex(
          children: <Widget>[
            Column(
              children: [
                Container(
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );*/
/*return Scaffold(
      appBar: AppBar(
        title: Text('Winery'),
      ),
      body: new Row(
        children: <Widget>[
          new Expanded (
            flex:1,
            child : Column(
              children: <Widget>[
                Container(
                  color: Colors.red,
                  child: Text("Hello World"),
                ),
                Container(
                  color: Colors.red,
                  child: Text("MIAO"),
                ),
              ],
            ),),
          new Expanded(
            flex :2,
            child: Column(
              children: <Widget>[
                new Text(
                    " test this is This is a long text this is a long test this is ")
              ],
            ),)
        ],
      ),
    );*/
//      return Scaffold(
////        appBar: AppBar(
////          title: Text("Expanded"),
////          backgroundColor: Colors.purple,
////        ),
////        body: Container(
////          child: Row(
////            children: <Widget>[
////              Expanded(
//////                flex: 3, // 60% of space => (6/(6 + 4))
//////                child: Container(
//////                  color: Colors.red,
//////                ),
////              ),
////              Expanded(
////                flex: 7, // 40% of space
////                child: Container(
////                  color: Colors.blue,
////                ),
////              ),
////            ],
////          ),
////        ),
////      );
//  return Scaffold(
//    appBar: AppBar(
//      title: Text('Winery'),
//      backgroundColor: Colors.purple,
//    ),
//    body: SafeArea(
//      child: ListView(
//        children: <Widget>[
//          ButtonBar(
//            children: <Widget>[
//              ElevatedButton(
//                  onPressed: null,
//                  child: null,
//                  style: ButtonStyle(
//                    backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.black38),
//                  ),
//              ),
//            ],
//          )
//        ],
//      ),
//    ),
//  );
