import 'package:flutter/material.dart';

class InProgressPage extends StatelessWidget {
  const InProgressPage({Key? key, required this.pageName}) : super(key: key);

  final String pageName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Pagina en proceso: " + pageName),
      ),
    );
  }
}
