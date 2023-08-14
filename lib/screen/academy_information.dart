import 'package:flutter/material.dart';

void main() => runApp(const AcademyInformation());

class AcademyInformation extends StatelessWidget {
  const AcademyInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experiencia laboral'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(
            children: const [
              Estudio(
                nombreCarrera: "Análisis y desarrollo de software",
                academia: "Servicio nacional de aprendizaje",
                descripcion:
                    "hahahahahahahashahahahahahahashahahahahahahashahahahahahahashahahahahahahashahahahahahahashahahahahahahashahahahahahahas",
                estado: "2022 | Actualmente",
              ),
              Estudio(
                nombreCarrera: "Tecnologia electrica",
                academia: "Ins Universitaria Pascual Bravo",
                descripcion:
                    "hahahahahahahashahahahahahahashahahahahahahashahahahahahahashahahahahahahashahahahahahahashahahahahahahashahahahahahahas",
                estado: "2018 | 2021",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Estudio extends StatelessWidget {
  final String nombreCarrera;
  final String academia;
  final String descripcion;
  final String estado;

  const Estudio({
    super.key,
    required this.nombreCarrera,
    required this.descripcion,
    required this.academia,
    required this.estado,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: ExpansionTile(
        title: Text(
          nombreCarrera,
          style: const TextStyle(
              color: Color.fromRGBO(0, 26, 78, 0.8),
              fontWeight: FontWeight.bold),
              
        ),
        children: [
          Column(children: [
            Text(academia,
                style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5))),
            Text(estado,
                style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(descripcion,
                  style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5))),
            )
          ])
        ],
      ),
    );
  }
}
