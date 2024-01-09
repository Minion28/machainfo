import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:machainfo/collapse.dart';
import 'package:machainfo/colors.dart';
import 'package:machainfo/five.dart';
import 'package:machainfo/four.dart';
import 'package:machainfo/one.dart';
import 'package:machainfo/themes/dark.dart';
import 'package:machainfo/themes/light.dart';
import 'package:machainfo/three.dart';
import 'package:machainfo/two.dart';
import 'package:url_launcher/url_launcher_string.dart';



void main() => runApp(
       MaterialApp(
          theme: lighttheme,
          darkTheme: darktheme,
        debugShowCheckedModeBanner: false,
        home: const MainPage()
        ),
  );


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
      backgroundColor: Theme.of(context).colorScheme.background,
      endDrawer: const Collapse(),
      body: screens[index],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
        child: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Theme.of(context).colorScheme.background,
            labelTextStyle: MaterialStateProperty.all(
               TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.secondary),),
          ),
          child: NavigationBar(
            height: 60,
            backgroundColor: Theme.of(context).colorScheme.background,
            selectedIndex: index,
            onDestinationSelected: (index) => setState(() => this.index = index),
            destinations: [
              NavigationDestination(
                  icon:  FaIcon(FontAwesomeIcons.one, color: Theme.of(context).colorScheme.secondary,),
                  selectedIcon: FaIcon(FontAwesomeIcons.diceOne, color: Theme.of(context).colorScheme.secondary),
                  label: 'One'),
               NavigationDestination(
                  icon: FaIcon(FontAwesomeIcons.two, color: Theme.of(context).colorScheme.secondary,),
                  selectedIcon: FaIcon(FontAwesomeIcons.diceTwo, color: Theme.of(context).colorScheme.secondary,),
                  label: 'Two'),
               NavigationDestination(
                  icon: FaIcon(FontAwesomeIcons.three, color: Theme.of(context).colorScheme.secondary,),
                  selectedIcon: FaIcon(FontAwesomeIcons.diceThree, color: Theme.of(context).colorScheme.secondary,),
                  label: 'Three'),
               NavigationDestination(
                  icon: FaIcon(FontAwesomeIcons.four, color: Theme.of(context).colorScheme.secondary,),
                  selectedIcon: FaIcon(FontAwesomeIcons.diceFour, color: Theme.of(context).colorScheme.secondary,),
                  label: 'Four'),
               NavigationDestination(
                  icon: FaIcon(FontAwesomeIcons.five,
                  color: Theme.of(context).colorScheme.secondary,),
                  selectedIcon: FaIcon(FontAwesomeIcons.diceFive, color: Theme.of(context).colorScheme.background,),
                  label: 'Five'),
            ],
          ),

        ),
      ),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).colorScheme.background,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light
        ),
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.secondary),
        primary: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: <Color>[Theme.of(context).colorScheme.secondary, Theme.of(context).colorScheme.background],
            )
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
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
