import 'package:flutter/material.dart';


void main() => runApp(const PersonalInformation());

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informacion personal'),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(24, 20, 24, 10),
            child: CircleAvatar(radius: 80),
          ),
          Center(
            child: Column(children: [
              Text(
                "Emmanuel tabares Ortiz",
                style: TextStyle(
                    color: Color.fromRGBO(0, 26, 78, 1),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Tecnologo electricista",
                style: TextStyle(
                  color: Color.fromRGBO(0, 26, 78, 0.5),
                  fontSize: 12,
                ),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 4, 24, 2),
            child: ExpansionTile(
                title: Text(
                  "Perfil profesional",
                  style: TextStyle(
                      color: Color.fromRGBO(0, 26, 78, 0.5),
                      fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                    subtitle: Text(
                        "Soy un tecnólogo electricista con experiencia laboral en análisis delicitaciones, liderazgo de proyectos y diseño civil. Además, soyaprendiz SENA en análisis y desarrollo de software con conocimientosen stack de tecnologías MERN y habilidades de liderazgo. Uno de mis principales atributos es mi calidad humana, lo que mepermite adaptarme fácilmente al trabajo en equipo y contribuirpositivamente al mismo. Me apasiona aprender y aplicar misconocimientos para superar desafíos y alcanzar objetivos."),
                  ),
                ]),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 2, 24, 4),
            child: ExpansionTile(
              
                title: Text(
                  "Informacion de contacto",
                  style: TextStyle(
                      color: Color.fromRGBO(0, 26, 78, 0.5),
                      fontWeight: FontWeight.bold),
                ),
                children: [
                  ListTile(
                      title: Text("Edas"),
                      subtitle: Text("23"),
                      leading: Icon(Icons.person_2)),
                  ListTile(
                      title: Text("Linkeding"),
                      subtitle: Text("www.linkedin.com/in/emmatabareso"),
                      leading: Icon(Icons.pending_actions_sharp)),
                  ListTile(
                      title: Text("Github"),
                      subtitle: Text("https://github.com/ST-Emmanuel00"),
                      leading: Icon(Icons.agriculture)),
                  ListTile(
                      title: Text("Correo"),
                      subtitle: Text("emanuel_tabares@hotmail.com"),
                      leading: Icon(Icons.mail)),
                  ListTile(
                      title: Text("Celular"),
                      subtitle: Text("321 8298707"),
                      leading: Icon(Icons.phone)),

                  ListTile(
                      title: Text("Ciudad"),
                      subtitle: Text("Medellín, Antioquia"),
                      leading: Icon(Icons.location_city)),
                ]),
          ),
        ],
      ),
    );
  }
}
