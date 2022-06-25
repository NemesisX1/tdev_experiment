import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
  int _selectedPage = 1;
  final _pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      //  backgroundColor: Colors.yellow,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 30,
              right: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Atavi Kpoti"),
                Icon(Icons.settings),
              ],
            ),
          ),
          Gap(50),
          Expanded(
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: [
                Container(),
                Scaffold(
                  body: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 100,
                            vertical: 50,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: RichText(
                            text: TextSpan(
                              text: "100.000",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 40,
                              ),
                              children: [
                                TextSpan(
                                  text: " FCFA",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Gap(20),
                        Container(
                          //   decoration: BoxDecoration(color: ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 50,
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.green,
                                          ),
                                          child: Icon(
                                            CupertinoIcons.arrow_down_left,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Gap(10),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Recu"),
                                            Text("2000"),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Ce ${DateTime.now().toString().split(" ")[0]}",
                                      style: TextStyle(),
                                    )
                                  ],
                                ),
                              ),
                              Gap(20),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.red,
                                          ),
                                          child: Icon(
                                            CupertinoIcons.arrow_up_right,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Gap(10),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Retrait"),
                                            Text("2000"),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Ce ${DateTime.now().toString().split(" ")[0]}",
                                      style: TextStyle(),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  floatingActionButton: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Color.fromARGB(246, 250, 209, 2),
                    tooltip: 'Transfert',
                    child: Icon(
                      CupertinoIcons.arrow_up_arrow_down,
                    ),
                  ), // This trailing comma makes auto-formatting nicer for build methods.
                ),
                Container(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        backgroundColor: Colors.red,
        onTap: (index) {
          _pageController.jumpToPage(index);
          setState(() {
            _selectedPage = index;
          });
        },
        unselectedItemColor: Colors.black,
        selectedIconTheme: const IconThemeData(
          size: 40,
          color: Colors.white,
        ),
        selectedLabelStyle: TextStyle(
          color: Colors.white,
        ),
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.smartphone_outlined),
            label: 'Achat',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Acceuil',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cart_fill),
            label: 'Services',
          )
        ],
      ),
    );
  }
}
