import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){},
                color: Colors.white,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.filter_list), onPressed: (){},
                        color: Colors.white,),
                      IconButton(icon: Icon(Icons.menu), onPressed: (){},
                        color: Colors.white,),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30.0,),
          Padding(padding: EdgeInsets.only(left: 40.0),
          child: Row(
            children: <Widget>[
              Text(
                "Restaurant",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0
                ),
              ),
              SizedBox(width: 15.0,),
              Text(
                "Food",
                style: TextStyle(
                    color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
            ],
          ),),
          SizedBox(height: 25.0,),
          Container(
            height: MediaQuery.of(context).size.height - 175.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0))
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0,right: 25.0),
              children: <Widget>[

              ],
            ),
          )

        ],
      ),

    );

  }
}
