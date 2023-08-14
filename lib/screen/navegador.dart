import 'package:cv/screen/personal_information.dart';
import 'package:cv/screen/work_experience.dart';
import 'package:flutter/material.dart';

import 'academy_information.dart';
import 'knowledge.dart';

void main() => runApp(const Navegador());

class Navegador extends StatelessWidget {
  const Navegador({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(239, 238, 238, 1),
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://scontent.feoh6-1.fna.fbcdn.net/v/t39.30808-6/337282747_580617514043374_3344356899813936816_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=be3454&_nc_eui2=AeFjbKEXm4gJVNC72YU0zkiQ0bOYL7NTiXLRs5gvs1OJcnjJ8_lHVU_8MuogdfLcLFhnMABNMDg5HgbT9AdUNYtF&_nc_ohc=wRRa8GvOVRIAX_RHNzR&_nc_ht=scontent.feoh6-1.fna&oh=00_AfA_RbwcjRGzwndapLqT7xL-Slk0aGYtXkH03xScomO6HQ&oe=64DE13E6'),
            ),
          ),
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          title: const Text(
            "Emmanuel Tabares Ortiz",
            style: TextStyle(
              color: Color.fromRGBO(0, 26, 78, 1),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon( Icons.undo),
              color: const Color.fromRGBO(246, 246, 246, 1) ,
              onPressed: () {
                final route = MaterialPageRoute(builder: (context) => const Navegador());
                Navigator.push(context, route);
              },
            )
          ],
        ),
        body: ListView(
          children: const [
            Opcion(
              titulo: 'Informacion personal',
              widget: PersonalInformation(),
              icono: Icons.person,
            ),
            Opcion(
              titulo: 'Conocimientos tecnicos',
              widget: Knowledge(),
              icono: Icons.code,
            ),
            Opcion(
              titulo: 'Experiencia laboral',
              widget: WorkExperience(),
              icono: Icons.work,
            ),
            Opcion(
              titulo: 'Informacion academica',
              widget: AcademyInformation(),
              icono: Icons.book,
            ),
          ],
        ));
  }
}

class Opcion extends StatelessWidget {
  final String titulo;
  final Widget widget;
  final IconData icono;

  const Opcion({
    super.key,
    required this.titulo,
    required this.widget,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      // color: const Color.fromRGBO(255, 255, 255, 1),
      width: 30.0,
      height: 80.0,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 1),
        borderRadius:
            BorderRadius.circular(10.0), // Radio de la esquina redondeada
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ListTile(
            title: Text(titulo),
            leading: Icon(
              icono,
              color: const Color.fromRGBO(0, 26, 78, 1),
            ),
            onTap: () {
              final route = MaterialPageRoute(builder: (context) => widget);
              Navigator.push(context, route);
            },
          ),
        ),
      ),
    );
  }
}
