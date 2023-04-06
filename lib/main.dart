import 'package:flutter/material.dart';
import 'package:machainfo/colors.dart';
import 'package:machainfo/homepage.dart';
import 'package:machainfo/about.dart';



void main() => {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage()
        ),
  ),
};


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State <MainPage> createState() => _MainState();
}

class _MainState extends State<MainPage> {
  int index = 0;
  final screens = [
    const HomePage(),
    const About(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dt,
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: green,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: bg),),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: dt,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home, color: bg,),
                selectedIcon: Icon(Icons.home_filled, color: bg,),
                label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.api, color: bg,),
                selectedIcon: Icon(Icons.api_sharp, color: bg,),
                label: 'About'),
          ],
        ),

      ),
      appBar: AppBar(
        primary: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: <Color>[dt, dt],
            )
          ),
        ),
        //leading: Image.asset('images/logo.png'),
        backgroundColor: dt,
        elevation: 0,
        title: SizedBox(
          height: 40,
          width: 40,
          child: SizedBox.fromSize(
            size: const Size.fromRadius(200),
            child: Image.asset('lib/assets/images/logo.png'),
          ),
    ),
        actions: const [

          Icon(Icons.search,
          size: 30.0,),
          Icon(Icons.more_vert,
          size: 30.0,)
        ],
      ),
    );
  }
}
