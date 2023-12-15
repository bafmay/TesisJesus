import 'package:flutter/material.dart';
import 'package:tesis_jesus/model/test.dart';
import 'package:tesis_jesus/widgets/question.dart';

import '../../widgets/textfield_container.dart';

class NewTutorial extends StatelessWidget {
  const NewTutorial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: const [
                  Icon(
                    Icons.video_camera_front_rounded,
                    size: 50,
                  ),
                  Text(
                    "Solicitar tutorial",
                    style:
                        TextStyle(fontSize: 21, fontWeight: FontWeight.normal),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Nombre de la aplicación",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            TextFieldContainer(
              child: TextField(
                onChanged: (value) {},
                decoration: const InputDecoration(
                  hintText: "ejemplo: Marvel",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "¿Qué funcionalidad quisieras aprender?",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            TextFieldContainer(
              child: TextField(
                onChanged: (value) {},
                decoration: const InputDecoration(
                  hintText: "ejemplo: Crear un flujo basico",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Questions(
                questionStyle: const TextStyle(fontWeight: FontWeight.bold),
                question: Question(
                    id: 1,
                    question: "Prioridad con la cual, necesitas el tutorial",
                    answers: [
                      Answer(id: 1, description: "Alta"),
                      Answer(id: 2, description: "Moderada"),
                      Answer(id: 3, description: "Baja"),
                    ]),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                minWidth: double.infinity,
                color: const Color(0xff50A7B8),
                textColor: Colors.white,
                onPressed: () => {},
                child: const Text("Enviar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
