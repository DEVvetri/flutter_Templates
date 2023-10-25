import 'package:flutter/material.dart';
import 'package:login/spotify2.dart';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const insta());
}

class insta extends StatelessWidget {
  const insta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.black),
        home: const pagechat());
  }
}

class pagechat extends StatefulWidget {
  const pagechat({super.key});

  @override
  State<pagechat> createState() => _pagechatState();
}

class _pagechatState extends State<pagechat> {
  int myindex = 0;
  final screen = [insta(), secondscreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar here
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Good morning",
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 25,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.access_time,
                size: 25,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings_sharp,
                size: 25,
              )),
        ],
      ),
      //app body
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(indicatorColor: Colors.amber),
        child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                myindex = index;
              });
            },
            backgroundColor: Colors.black,
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
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              // scrollDirection = Axis.vertical,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                color: const Color.fromARGB(255, 0, 0, 0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 1),
                        Container(
                            width: 193,
                            height: 76,
                            color: const Color.fromARGB(255, 70, 68, 68),
                            child: Row(
                              children: [
                                Container(
                                  width: 73,
                                  height: 76,
                                  color: const Color.fromARGB(255, 78, 72, 78),
                                  foregroundDecoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm2QFELdnFvWelbI-CnRMtOkSkyZGp8pWSvq7r9yLvQ--RJWXWU9A50P6yoKxk9UcGGNY&usqp=CAU"))),
                                ),
                                Container(
                                  width: 120,
                                  height: 76,
                                  color: const Color.fromARGB(205, 57, 57, 57),
                                  child: const Center(
                                      child: Text(
                                    "kutty patasu",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )),
                                )
                              ],
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                            width: 193,
                            height: 76,
                            color: const Color.fromARGB(255, 70, 68, 68),
                            child: Row(
                              children: [
                                Container(
                                  width: 73,
                                  height: 76,
                                  color: const Color.fromARGB(205, 57, 57, 57),
                                  foregroundDecoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZJ1lq6YIy-mn1rrZ4TGVqNgMM8mMC-47Ccw&usqp=CAU"))),
                                ),
                                Container(
                                  width: 120,
                                  height: 76,
                                  color: const Color.fromARGB(205, 57, 57, 57),
                                  child: const Center(
                                      child: Text(
                                    "va vaththi",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )),
                                )
                              ],
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 1),
                        Container(
                            width: 193,
                            height: 76,
                            color: const Color.fromARGB(255, 70, 68, 68),
                            child: Row(
                              children: [
                                Container(
                                  width: 73,
                                  height: 76,
                                  color: const Color.fromARGB(205, 57, 57, 57),
                                  foregroundDecoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm2QFELdnFvWelbI-CnRMtOkSkyZGp8pWSvq7r9yLvQ--RJWXWU9A50P6yoKxk9UcGGNY&usqp=CAU"))),
                                ),
                                Container(
                                  width: 120,
                                  height: 76,
                                  color: const Color.fromARGB(205, 57, 57, 57),
                                  child: const Center(
                                      child: Text(
                                    "kutty patasu",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )),
                                )
                              ],
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                            width: 193,
                            height: 76,
                            color: const Color.fromARGB(255, 70, 68, 68),
                            child: Row(
                              children: [
                                Container(
                                  width: 73,
                                  height: 76,
                                  color: const Color.fromARGB(205, 57, 57, 57),
                                  foregroundDecoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZJ1lq6YIy-mn1rrZ4TGVqNgMM8mMC-47Ccw&usqp=CAU"))),
                                ),
                                Container(
                                  width: 120,
                                  height: 76,
                                  color: const Color.fromARGB(205, 57, 57, 57),
                                  child: const Center(
                                      child: Text(
                                    "va vaththi",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )),
                                )
                              ],
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 1),
                        Container(
                            width: 193,
                            height: 76,
                            color: const Color.fromARGB(255, 70, 68, 68),
                            child: Row(
                              children: [
                                Container(
                                  width: 73,
                                  height: 76,
                                  color: const Color.fromARGB(205, 57, 57, 57),
                                  foregroundDecoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm2QFELdnFvWelbI-CnRMtOkSkyZGp8pWSvq7r9yLvQ--RJWXWU9A50P6yoKxk9UcGGNY&usqp=CAU"))),
                                ),
                                Container(
                                  width: 120,
                                  height: 76,
                                  color: const Color.fromARGB(205, 57, 57, 57),
                                  child: const Center(
                                      child: Text(
                                    "kutty patasu",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )),
                                )
                              ],
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                            width: 193,
                            height: 76,
                            color: const Color.fromARGB(255, 70, 68, 68),
                            child: Row(
                              children: [
                                Container(
                                  width: 73,
                                  height: 76,
                                  color: const Color.fromARGB(205, 57, 57, 57),
                                  foregroundDecoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZJ1lq6YIy-mn1rrZ4TGVqNgMM8mMC-47Ccw&usqp=CAU"))),
                                ),
                                Container(
                                  width: 120,
                                  height: 76,
                                  color: const Color.fromARGB(205, 57, 57, 57),
                                  child: const Center(
                                      child: Text(
                                    "va vaththi",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )),
                                )
                              ],
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              color: const Color.fromARGB(255, 0, 0, 0),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 0),
                      child: Text(
                        "Picked for you",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      width: 150,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.do_disturb,
                          color: Colors.white,
                          size: 30,
                        ))
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 170,
                      height: 200,
                      color: const Color.fromARGB(255, 145, 143, 139),
                      foregroundDecoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm2QFELdnFvWelbI-CnRMtOkSkyZGp8pWSvq7r9yLvQ--RJWXWU9A50P6yoKxk9UcGGNY&usqp=CAU"))),
                    ),
                    Container(
                      width: 210,
                      height: 200,
                      color: const Color.fromARGB(255, 70, 68, 68),
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.play_circle,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              color: const Color.fromARGB(255, 0, 0, 0),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Jump back in",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 170,
                          height: 170,
                          color: const Color.fromARGB(255, 70, 68, 68),
                          foregroundDecoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZJ1lq6YIy-mn1rrZ4TGVqNgMM8mMC-47Ccw&usqp=CAU"))),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 170,
                          height: 170,
                          color: const Color.fromARGB(255, 70, 68, 68),
                          foregroundDecoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZJ1lq6YIy-mn1rrZ4TGVqNgMM8mMC-47Ccw&usqp=CAU"))),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 170,
                          height: 170,
                          color: const Color.fromARGB(255, 70, 68, 68),
                          foregroundDecoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZJ1lq6YIy-mn1rrZ4TGVqNgMM8mMC-47Ccw&usqp=CAU"))),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 170,
                          height: 170,
                          color: const Color.fromARGB(255, 70, 68, 68),
                          foregroundDecoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZJ1lq6YIy-mn1rrZ4TGVqNgMM8mMC-47Ccw&usqp=CAU"))),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 170,
                          height: 170,
                          color: const Color.fromARGB(255, 70, 68, 68),
                          foregroundDecoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZJ1lq6YIy-mn1rrZ4TGVqNgMM8mMC-47Ccw&usqp=CAU"))),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              color: const Color.fromARGB(255, 65, 59, 65),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              color: const Color.fromARGB(255, 78, 72, 78),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              color: const Color.fromARGB(255, 65, 59, 65),
            ),
          ],
        ),
      ),
    );
  }
}
