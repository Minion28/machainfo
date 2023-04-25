import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:machainfo/collapse.dart';
import 'package:machainfo/colors.dart';
import 'package:machainfo/five.dart';
import 'package:machainfo/four.dart';
import 'package:machainfo/one.dart';
import 'package:machainfo/three.dart';
import 'package:machainfo/two.dart';
import 'package:url_launcher/url_launcher_string.dart';



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
    const One(),
    const Two(),
    const Three(),
    const Four(),
    const Five()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dt,
      endDrawer: const Collapse(),
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: blue,
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
                icon: FaIcon(FontAwesomeIcons.one, color: bg,),
                selectedIcon: FaIcon(FontAwesomeIcons.diceOne, color: bg,),
                label: 'One'),
            NavigationDestination(
                icon: FaIcon(FontAwesomeIcons.two, color: bg,),
                selectedIcon: FaIcon(FontAwesomeIcons.diceTwo, color: bg,),
                label: 'Two'),
            NavigationDestination(
                icon: FaIcon(FontAwesomeIcons.three, color: bg,),
                selectedIcon: FaIcon(FontAwesomeIcons.diceThree, color: bg,),
                label: 'Three'),
            NavigationDestination(
                icon: FaIcon(FontAwesomeIcons.four, color: bg,),
                selectedIcon: FaIcon(FontAwesomeIcons.diceFour, color: bg,),
                label: 'Four'),
            NavigationDestination(
                icon: FaIcon(FontAwesomeIcons.five,
                color: bg,),
                selectedIcon: FaIcon(FontAwesomeIcons.diceFive, color: bg,),
                label: 'Five'),
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
        backgroundColor: dt,
        elevation: 0,
        title: SizedBox(
          height: 40,
          width: 40,
          child: SizedBox.fromSize(
            size: const Size.fromRadius(200),
            child: GestureDetector(
                onTap:()=> launchUrlString('https://machakos.go.ke'),child: Image.asset('lib/assets/images/logo.png',)),
          ),
    ),
      ),
    );
  }
}
