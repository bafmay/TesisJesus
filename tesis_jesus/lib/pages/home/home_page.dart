import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:tesis_jesus/model/Tutorial.dart';
import 'package:tesis_jesus/pages/test/test_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        Header(),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Column(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(tutorials[index].imgPath,
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      tutorials[index].title,
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
              childCount: tutorials.length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 2.0,
            ),
          ),
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  Header({Key? key}) : super(key: key);

  void _goToTestPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => TestPage()));
  }

  void _showDialog(BuildContext context) => showDialog(
        context: context,
        barrierDismissible: true, // set to false if you want to force a rating
        builder: (context) => _dialog,
      );

  final _dialog = RatingDialog(
    initialRating: 1.0,
    title: const Text(
      'Calificar Tutorial 😃',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    submitButtonText: 'Aceptar',
    enableComment: false,
    onCancelled: () => print('cancelled'),
    onSubmitted: (response) {},
  );

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(children: [
        const SizedBox(height: 15),
        const Text("Como cambiar el Fondo en Google Meet"),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: SizedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/home/meet.jpeg',
                        fit: BoxFit.fitWidth),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    MaterialButton(
                      minWidth: 130,
                      color: const Color(0xffBCB84C),
                      textColor: Colors.white,
                      onPressed: () => _showDialog(context),
                      child: const Text("Calificar Tutorial"),
                    ),
                    MaterialButton(
                      minWidth: 130,
                      textColor: Colors.white,
                      color: const Color(0xff64C04C),
                      onPressed: () => _goToTestPage(context),
                      child: const Text("Desarrollar test"),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
