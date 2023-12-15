import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key, required this.onTap}) : super(key: key);

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xff212C3D),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 150, // To change the height of DrawerHeader
              width: double.infinity, // To Change the width of DrawerHeader
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color(0xff293443),
                ),
                child: Column(
                  children: const [
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Jesus Pantigoso',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.message),
              title: const Text('Notas'),
              onTap: () {
                onTap("N", 'Notas');
                Navigator.pop(context);
              },
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.video_call),
              title: const Text('Solicitar tutorial'),
              onTap: () {
                onTap("T", "Solicitar tutorial");
                Navigator.pop(context);
              },
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.book),
              title: const Text('Manuales'),
              onTap: () {
                onTap("M", 'Manuales');
                Navigator.pop(context);
              },
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.movie),
              title: const Text('Videos'),
              onTap: () {
                onTap("V", "Videos");
                Navigator.pop(context);
              },
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.swap_horiz),
              title: const Text('Cambiar contraseña'),
              onTap: () {
                onTap("PASSREC", 'Cambiar contraseña');
                Navigator.pop(context);
              },
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.help),
              title: const Text('Preguntas frecuentes'),
              onTap: () {
                onTap("FAQ", 'Preguntas frecuentes');
                Navigator.pop(context);
              },
            ),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.logout),
              title: const Text('Cerrar sesion'),
              onTap: () {
                onTap("LOGOUT", "Cerrar sesion");
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
