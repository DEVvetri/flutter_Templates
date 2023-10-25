
import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(const secondscreen());
// }

class secondscreen extends StatelessWidget {
  const secondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: const secondscreenwidgets(),
    );
  }
}

class secondscreenwidgets extends StatefulWidget {
  const secondscreenwidgets({super.key});

  @override
  State<secondscreenwidgets> createState() => _secondscreenwidgets();
}

class _secondscreenwidgets extends State<secondscreenwidgets> {
  int myindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        title: const Text(
          "Search",
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              ))
        ],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(indicatorColor: Colors.amber),
        child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                myindex = index;
              });
            },
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            currentIndex: myindex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                label: "search",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_music_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                label: "libary",
              )
            ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                width: 375,
                child: TextField(
                  // style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "what do you want to listen to?",
                      hoverColor: Colors.black,
                      hintStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 270),
              child: Text(
                "Browse all",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 5),
                  itemBuilder: (context, index) => GridTile(
                    header: const GridTileBar(
                      backgroundColor: Colors.black45,
                      title: Text(
                        "Songs",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    footer: const GridTileBar(
                      backgroundColor: Colors.black,
                      leading: Text(
                        "Songs",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkm2lwRY6GFFh99BdjBXVTWqpMZLfI-NXmsQ&usqp=CAU",
                      scale: 0.5,
                    ),
                  ),
                  itemCount: 50,
                ))
          ],
        ),
      ),
    );
  }
}
