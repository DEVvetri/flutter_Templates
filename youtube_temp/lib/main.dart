import 'package:flutter/material.dart';
import 'package:youtube/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int myindex = 0;
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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              "https://logos-world.net/wp-content/uploads/2020/04/YouTube-Logo.png",
              fit: BoxFit.contain,
              height: 60,
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Index()));
              },
              icon: const Icon(
                Icons.screen_share_outlined,
                size: 30,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_active_outlined,
                size: 30,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person_2_outlined,
                size: 30,
                color: Colors.black,
              )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              myindex = index;
            });
          },
          currentIndex: myindex,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(10, 35, 54, 0),
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.black,
                ),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.app_shortcut,
                  color: Colors.black,
                ),
                label: "Short"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box_outlined,
                  size: 30,
                  color: Colors.black,
                ),
                label: " "),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.subscriptions_outlined,
                  color: Colors.black,
                ),
                label: "Subscription"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_add,
                  color: Colors.black,
                ),
                label: "Library"),
          ]),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  IconButton(
                      color: Colors.black,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.outbond_outlined,
                        size: 30,
                      )),
                  Container(
                    // decoration:
                    // BoxDecoration(borderRadius: BorderRadius.circular(1)),
                    height: 40,
                    color: const Color.fromARGB(255, 135, 133, 126),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "All",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        )),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 40,
                    color: const Color.fromARGB(255, 135, 133, 126),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Vijay",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 40,
                    color: const Color.fromARGB(255, 135, 133, 126),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Music",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 40,
                    color: const Color.fromARGB(255, 135, 133, 126),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Dramedy",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 40,
                    color: const Color.fromARGB(255, 135, 133, 126),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "All",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 40,
                    color: const Color.fromARGB(255, 135, 133, 126),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "All",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.shortestSide + 190,
            // color: Colors.black,
            child: GridView.builder(
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, crossAxisSpacing: 2),
              itemBuilder: (context, index) => GridTile(
                  header: GridTileBar(
                      backgroundColor: Colors.grey[400],
                      subtitle: Text("This is my Channel",
                          style: TextStyle(
                              fontSize: 25,
                              color: const Color.fromARGB(255, 173, 113, 113))),
                      leading: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu_sharp,
                            color: Colors.black,
                          ))),
                  footer: GridTileBar(
                      backgroundColor: Colors.grey[400],
                      subtitle: const Text(
                        "Thanks for Watching Subscribe",
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      )),
                  child: Image.network(
                    "https://logos-world.net/wp-content/uploads/2020/04/YouTube-Logo.png",
                    scale: 20,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
