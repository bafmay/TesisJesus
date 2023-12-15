import 'package:flutter/material.dart';
import 'package:tesis_jesus/pages/home/home_page.dart';
import 'package:tesis_jesus/widgets/drawer.dart';

import 'pages/in_progress/in_progress_page.dart';
import 'pages/new_tutorial/new_tutorial_page.dart';

void main() => runApp(const DrawerApp());

class DrawerApp extends StatefulWidget {
  const DrawerApp({Key? key}) : super(key: key);

  @override
  State<DrawerApp> createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const Drawer(),
    );
  }
}

class Drawer extends StatefulWidget {
  const Drawer({Key? key}) : super(key: key);

  @override
  State<Drawer> createState() => _DrawerState();
}

class _DrawerState extends State<Drawer> {
  String selectedPage = 'N';
  String selectedPageName = '';

  Widget showPage() {
    if (selectedPage == "N") {
      return const HomePage();
    } else if (selectedPage == "T") {
      return const NewTutorial();
    } else {
      return InProgressPage(
        pageName: selectedPageName,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CustomDrawer(
        onTap: (parameter, name) {
          setState(() {
            selectedPage = parameter;
            selectedPageName = name;
          });
        },
      ),
      body: showPage(),
    );
  }
}
