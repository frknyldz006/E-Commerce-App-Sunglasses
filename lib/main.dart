import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sunglassesapp/detail_page.dart';

import 'circle_blur_painter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sunglasses E-Commerce',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      theme: ThemeData(
        colorScheme: const ColorScheme(
          primary: Color(0xFF121212),
          onPrimary: Color(0xFF121212),
          secondary: Color(0xFFf6f6f6),
          onSecondary: Color(0xFFf6f6f6),
          error: Colors.redAccent,
          onError: Colors.white,
          surface: Color(0xFFFAFBFB),
          onSurface: Color(0xFF241E30),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8E4D7),
      body: Stack(children: [
        Positioned(
          top: 40,
          child: Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.deepOrange.withOpacity(0.6),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 60.0, sigmaY: 60.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
        ),
        Positioned(
          left: 250,
          top: 200,
          child: Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.purple.withOpacity(0.6),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 60.0, sigmaY: 60.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverAppBar(
                backgroundColor: Colors.transparent,
                leading: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu_rounded,
                          color: Colors.white,
                        )),
                  ),
                ),
                actions: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Theme.of(context).colorScheme.primary,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 40,
                ),
              ),
              SliverToBoxAdapter(
                child: Text(
                  "I'm Lovin'\nSunglasses",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 48),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                    height: 46,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      children: [
                        hcontainer(
                          context,
                          "All",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        hcontainer(
                          context,
                          "New Arrivals",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        hcontainer(
                          context,
                          "Best Sellers",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        hcontainer(
                          context,
                          "Special Picks",
                        )
                      ],
                    )),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => DetailPage(),)),
                      child: Column(
                        children: [
                          Container(
                            height: 160,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Image.network(
                                "https://i5.walmartimages.com/seo/WearMe-Pro-Flat-Top-Polarized-Lens-Square-Black-Sunglasses-for-Men_3253c9b2-dc94-4797-b31e-354e76fe9fe1.cd07ed67038ac1cd1f2075b9abcfa345.jpeg?odnHeight=640&odnWidth=640&odnBg=FFFFFF"),
                            clipBehavior: Clip.hardEdge,
                            padding: EdgeInsets.all(20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Aviator Mirror",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary),
                          ),
                          Text(
                            "\$267.20",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    );
                  },
                  childCount: 100,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 180,
          bottom: 40,
          child: scontainer(
            context,
            "Try With AI",
          ),
        ),
      ]),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Container scontainer(BuildContext context, text) {
    return Container(
      width: 140,
      height: 60,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.camera_alt_rounded,
            color: Theme.of(context).colorScheme.secondary,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(color: Theme.of(context).colorScheme.secondary),
          )
        ],
      ),
    );
  }

  Container hcontainer(BuildContext context, text) {
    return Container(
      width: 140,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
