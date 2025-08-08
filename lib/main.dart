import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyappHome());
}

class MyappHome extends StatefulWidget {
  const MyappHome({super.key});

  @override
  State<MyappHome> createState() => _MyappHomeState();
}

class _MyappHomeState extends State<MyappHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          height: 95,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      // ignore: avoid_print
                      onPressed: () => print('홈으로'),
                      icon: Icon(
                        Icons.home_outlined,
                        color: Colors.black87,
                        size: 30,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0, -10),
                      child: Text(
                        'Home',
                        style: GoogleFonts.jua(
                          color: Colors.black87,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      // ignore: avoid_print
                      onPressed: () => print('favorites'),
                      icon: Icon(
                        FontAwesomeIcons.heart,
                        color: Colors.black87,
                        size: 30,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0, -10),
                      child: Text(
                        'Favorites',
                        style: GoogleFonts.jua(
                          color: Colors.black87,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      // ignore: avoid_print
                      onPressed: () => print('Settings'),
                      icon: Icon(
                        Icons.settings_outlined,
                        color: Colors.black87,
                        size: 30,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0, -10),
                      child: Text(
                        'Settings',
                        style: GoogleFonts.jua(
                          color: Colors.black87,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => print('홈으로'),
                      icon: Icon(Icons.arrow_back_rounded),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.local_gas_station,
                          color: Colors.deepOrange,
                          size: 30,
                        ),
                        SizedBox(width: 8),
                        Text(
                          '주유비서',
                          style: GoogleFonts.jua(
                            color: Colors.black87,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () => print('메뉴!'),
                      icon: Icon(Icons.menu),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_gas_station,
                        size: 100,
                        color: Colors.deepOrange,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_gas_station,
                        size: 100,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
