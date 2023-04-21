import 'package:flutter/material.dart';
import 'package:machadonate/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

final Uri url = Uri.parse('https://github.com/Minion28');
final Uri mail = Uri.parse('https://github.com/Minion28');
final Uri whatsapp = Uri.parse('https://wa.me/qr/EGSZ4USP2ZQNL1');
final Uri linkedin = Uri.parse('https://www.linkedin.com/in/kelvin-wambua-7b003a226/');
final Uri instagram = Uri.parse('https://www.instagram.com/_.wambua._/');
final Uri twitter = Uri.parse('https://twitter.com/kelvinwambua11?t=Pmm3Z6KhiHkOoGLDf2W3Jw&s=09');
final Uri slack = Uri.parse('https://join.slack.com/shareDM/zt-1tl9j53sw-RycKTj~92ph_eQV1CC_kMw');
class Collapse extends StatelessWidget {
  const Collapse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: dt,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: const Text('Kelvin Wambua Mwanzia'),
              accountEmail: const Text('wambuakelvin14@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: dt,
              child: ClipOval(
                child: Image.asset('lib/assets/images/user.jpg',
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: dt,
            ),
          ),
          ListTile(
            leading:  IconButton(
              onPressed:() {
                launchUrlString('tel://254718128724');
              },
              icon: const FaIcon(FontAwesomeIcons.phone,
                color: blue,),
            ),
            title: const Text('Phone',
            style: TextStyle(
              color: bg
            ),
            ),
            onTap: () {
              launchUrlString('tel://254718128724');
            },

          ),
          ListTile(
            leading:  IconButton(
              onPressed:() {
                launchUrlString('mailto://wambuakelvin14@gmail.com');
              },
              icon: const FaIcon(FontAwesomeIcons.envelope,
                color: Colors.red,),
            ),
            title: const Text('Email',
              style: TextStyle(
                  color: bg
              ),),
            onTap: () {
              launchUrlString('mailto://wambuakelvin14@gmail.com');
            },

          ),
          ListTile(
            leading:  IconButton(
              onPressed:() {
                launchUrl(whatsapp);
              },
              icon: const FaIcon(FontAwesomeIcons.whatsapp,
                color: green,),
            ),
            title: const Text('Whatsapp',
              style: TextStyle(
                  color: bg
              ),),
            onTap: () {
              launchUrl(whatsapp);
            },

          ),
          ListTile(
            leading:  IconButton(
              onPressed:() {
                launchUrl(url);
              },
              icon: const FaIcon(FontAwesomeIcons.github,
                color: bg,),
            ),
            title: const Text('Github',
              style: TextStyle(
                  color: bg
              ),),
            onTap: () {
              launchUrl(url);
            },

          ),
          ListTile(
            leading:  IconButton(
              onPressed:() {
                launchUrl(linkedin);
              },
              icon: const FaIcon(FontAwesomeIcons.linkedin,
                color: blue,),
            ),
            title: const Text('Linkedin',
              style: TextStyle(
                  color: bg
              ),),
            onTap: () {
              launchUrl(linkedin);
            },

          ),
          ListTile(
            leading:  IconButton(
              onPressed:() {
                launchUrl(instagram);
              },
              icon: const FaIcon(FontAwesomeIcons.instagram,
                color: Colors.pinkAccent,),
            ),
            title: const Text('Instagram',
              style: TextStyle(
                  color: bg
              ),),
            onTap: () {
              launchUrl(instagram);
            },

          ),
          ListTile(
            leading:  IconButton(
              onPressed:() {
                launchUrl(twitter);
              },
              icon: const FaIcon(FontAwesomeIcons.twitter,
              color: Colors.blueAccent,),
            ),
            title: const Text('Twitter',
              style: TextStyle(
                  color: bg
              ),),
            onTap: () {
              launchUrl(twitter);
            },

          ),
          ListTile(
            leading:  IconButton(
              onPressed:() {
                launchUrl(slack);
              },
              icon: const FaIcon(FontAwesomeIcons.slack,
                color: Colors.yellowAccent,),
            ),
            title: const Text('Slack',
              style: TextStyle(
                  color: bg
              ),),
            onTap: () {
              launchUrl(slack);
            },

          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Center(
                child: Text('All rights reserved',
                  style: TextStyle(
                      color: bg
                  ),)),
          ),
          const Center(
              child: Text('2023',
                style: TextStyle(
                    color: bg
                ),))



    ],
      ),
    );
  }
}