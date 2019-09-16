import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Futter utilties",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.teal,
      brightness: Brightness.light,
      accentColor: Colors.yellow,
    ),
    home: HomePage(),

  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  TabController tabController;
  @override
  void initState(){
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose(){
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter_Util",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w800,
        ),
        ),
        centerTitle: true,
        bottom: TabBar(
            controller: tabController,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.favorite),
              ),
              Tab(
                icon: Icon(Icons.email),
              )
            ]
        ),
      ),

      body: TabBarView(
          children: <Widget>[
          NewPage("First"),
            NewPage("Second"),
          ],
        controller: tabController,
      )
      );
  }
}

class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title),
      )
    );
  }
}
