import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(255, 92, 56, 151)),
        
      ),
      home: const MyHomePage(title: 'vetri Home Page'),
   
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
  // int _counter = 0;
  bool valueone=false;
  // bool valueone=true;
  void _incrementCounter() {
    
    // setState(() {
    //   // This call to setState tells the Flutter framework that something has
    //   // changed in this State, which causes it to rerun the build method below
    //   // so that the display can reflect the updated values. If we changed
    //   // _counter without calling setState(), then the build method would not be
    //   // called again, and so nothing would appear to happen.
    //   _counter--;
    // });
  }
  
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("vetri apps",
            style: TextStyle(color: Colors.black, fontSize: 25)),
        centerTitle: true,
        
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.hide_source),
            iconSize: 35,
            color: const Color.fromARGB(255, 7, 2, 17),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 114, 34, 227),
      ),
      body: SingleChildScrollView(
      
        child: Center(
          
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
            
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            //
            // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
            // action in the IDE, or press "p" in the console), to see the
            // wireframe for each widget
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // Container(
              //   decoration: const BoxDecoration(
              //     image: DecorationImage(image: Image.network("https://cdn.dribbble.com/users/925716/screenshots/3333720/attachments/722375/night.png")),
              //     fit: BoxFit.fill,
              //   ),
              // ),
              const SizedBox(
                height: 70,
              ),
              const Padding(
                padding: EdgeInsets.only(right:60),
                child: Text("Welcome back ",
                    style: TextStyle(
                        fontSize: 35,
                        color: Color.fromRGBO(40, 8, 84, 1),
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 15,),
              const Padding(
                padding: EdgeInsets.only(right: 120,left: 10),
                child: Text("Sign in to continue using Tipe",
                    style: TextStyle(color: Color.fromARGB(255, 69, 57, 71),fontSize: 15)),
              ),
              const SizedBox(
                height: 25,
              ),
              const SizedBox(
                width: 325,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Email or Username",
                    prefixIcon: Icon(Icons.email_outlined),
                    // border: OutlineInputBorder(
                    //   // borderSide: BorderSide.,
                    //   // borderRadius:BorderRadius.circular(0) 
                    //   )
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const SizedBox(
                  width: 325,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Password",
                        alignLabelWithHint: true,
                        prefixIcon: Icon(Icons.security),
                        suffixIcon: Icon(Icons.visibility_sharp),
                        hintTextDirection: TextDirection.ltr,
                        // labelText: Color(Colors.blueAccent)
                        // focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                        ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: Row(
                  children: [
                    SizedBox(width:30,),
                    Checkbox(value: valueone,
                    onChanged: (bool) {
                      setState(() {
                        valueone = !valueone;
                      });
                    }),
        
                    // SizedBox(width:70,),
                    Text("remainder me"),
                    SizedBox(width:80,),
                    Text("Forget password?" ,style: TextStyle(color: Color.fromARGB(255, 170, 34, 224),fontWeight: FontWeight.bold)),
                    
                  ],
                ),
                
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left:10),
                child:SizedBox(width: 300,height: 50,
                  child:ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 127, 0, 238))) ,
                    child:const Text("LOGIN",style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 255, 255, 255)),),
                    
                    )
        
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "--OR--",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 15),
              
              Padding(
                padding: const EdgeInsets.only(left:10),
                child:SizedBox(width: 300,height: 55,
                  child: OutlinedButton.icon(onPressed: () {}, 
                  
                  style: OutlinedButton.styleFrom(backgroundColor: Colors.white,side: BorderSide(color: Colors.blue,width: 2)),
                  label: const Text("Login with Google", style: TextStyle(color: Color.fromARGB(255, 14, 111, 238))),
                  icon: FaIcon(FontAwesomeIcons.google,color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left:10),
                child:SizedBox(width: 300,height: 55,
                  child: OutlinedButton.icon(
                    // style: ButtonStyle(shape:ButtonStyle(borderRadius:BorderRadius.circular(10)) ),
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(backgroundColor: Colors.black),
                    label: const Text("Login with Github", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
                    icon: FaIcon(FontAwesomeIcons.github,color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Row(
                children: [
                  SizedBox(width: 55,),
                  Text("Don't have an account?"),
                  SizedBox(width: 5,),
                  Text("Register Here", style: TextStyle(color: Color.fromARGB(255, 156, 2, 252),fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}