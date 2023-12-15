class Question {
  final int id;
  final String question;
  final List<Answer> answers;
  Question({this.id = 0, this.question = "", this.answers = const []});
}

class Answer {
  final int id;
  final String description;
  Answer({this.id = 0, this.description = ""});
}

var questions = [
  Question(
      id: 1,
      question: "¿Cómo se llama la opción que se debe seleccionar?",
      answers: [
        Answer(id: 1, description: 'Cambiar fondo'),
        Answer(id: 2, description: 'Fondo blanco'),
        Answer(id: 3, description: 'Cambiar foto'),
      ]),
  Question(
    id: 2,
    question: "¿Donde se debe ir para cambiar el fondo de pantalla?",
    answers: [
      Answer(id: 4, description: 'Desde opcion lateral'),
      Answer(id: 5, description: 'Desde menu'),
    ],
  ),
  Question(
    id: 3,
    question: "¿Se puede subir un fondo de pantalla personalizado?",
    answers: [
      Answer(id: 6, description: 'Si'),
      Answer(id: 7, description: 'No'),
    ],
  ),
  Question(
    id: 4,
    question: "¿Se puede desenfocar parcialemnte el fondo de pantalla?",
    answers: [
      Answer(id: 8, description: 'Si'),
      Answer(id: 9, description: 'No'),
    ],
  ),
  Question(
    id: 5,
    question: "¿Es posible tener la camara apagada?",
    answers: [
      Answer(id: 8, description: 'Si'),
      Answer(id: 9, description: 'No'),
    ],
  ),
  Question(
      id: 1,
      question: "¿Cómo se llama la opción que se debe seleccionar?",
      answers: [
        Answer(id: 1, description: 'Cambiar fondo'),
        Answer(id: 2, description: 'Fondo blanco'),
        Answer(id: 3, description: 'Cambiar foto'),
      ]),
  Question(
    id: 2,
    question: "¿Donde se debe ir para cambiar el fondo de pantalla?",
    answers: [
      Answer(id: 4, description: 'Desde opcion lateral'),
      Answer(id: 5, description: 'Desde menu'),
    ],
  ),
];
