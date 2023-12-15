import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tesis_jesus/model/test.dart';

import '../../widgets/question.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  void _showDialog(BuildContext context) => showDialog(
        context: context,
        barrierDismissible: true, // set to false if you want to force a rating
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: const Text('😃'),
          content: const Text('Aprobado'),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('Aceptar'),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Test - Cambiar fondo meet',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                    itemCount: questions.length,
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    itemBuilder: (_, index) {
                      final question = questions[index];
                      return Questions(
                        question: question,
                      );
                    }),
                SizedBox(height: 12),
                MaterialButton(
                  minWidth: 130,
                  color: const Color(0xff834D29),
                  textColor: Colors.white,
                  onPressed: () => _showDialog(context),
                  child: const Text("Enviar"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
