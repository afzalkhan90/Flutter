import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.dark(
          primary: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar tit0xFFE0BBE4le.
        title: Text(widget.title),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Hafiz Afzal Khan", style: TextStyle(color: Colors.black),),
                accountEmail: Text("info.nurulquranacademy@gmail.com", style: TextStyle(color: Colors.black),),
                currentAccountPicture: CircleAvatar(foregroundImage: AssetImage("assets/images/1234.jpg"),),
              // otherAccountsPictures: [
              //   CircleAvatar(foregroundImage: AssetImage("assets/images/1234.jpg"),),
              //   CircleAvatar(foregroundImage: AssetImage("assets/images/1234.jpg"),),
              // ],
            ),
             ListTile(
               leading: Icon(Icons.home, color: Colors.white ,),
               title: Text("Home"),
               onTap: ()
               {

               },
             ),
            ListTile(
              leading: Icon(Icons.info, color: Colors.white ,),
              title: Text("About"),
              onTap: ()
              {

              },
            ),
            ListTile(
              leading: Icon(Icons.school, color: Colors.white ,),
              title: Text("Learning"),
              onTap: ()
              {

              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail, color: Colors.white ,),
              title: Text("Contact"),
              onTap: ()
              {

              },
            ),

          ],
        ),

      ),

      body: SingleChildScrollView
        (
           child: Container(
             width: double.infinity,
             height: 200,



           ),
         ),


    );
  }
}
