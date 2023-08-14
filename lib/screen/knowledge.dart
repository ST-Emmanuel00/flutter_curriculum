import 'package:flutter/material.dart';

void main() => runApp(const Knowledge());

class Knowledge extends StatelessWidget {
  const Knowledge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Conocimientos tecnicos'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView(
              children: const [
                Tecnologia(
                  link: 'https://th.bing.com/th/id/OIP.0qThwGUlnULLAz8MTnN9QwHaHa?pid=ImgDet&rs=1',
                  tecologia: 'JavaScript',
                  descripcion: 'JavaScript es un lenguaje de programación ampliamente utilizado para crear interactividad en sitios web y aplicaciones web.',
                ),
                Tecnologia(
                  link: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/240px-Python-logo-notext.svg.png',
                  tecologia: 'Python',
                  descripcion: 'Python es un lenguaje de programación versátil utilizado en desarrollo web, análisis de datos, aprendizaje automático, automatización y más',
                ),
                Tecnologia(
                  link: 'https://upload.wikimedia.org/wikipedia/en/thumb/3/30/Java_programming_language_logo.svg/240px-Java_programming_language_logo.svg.png',
                  tecologia: 'JAVA',
                  descripcion: 'Java es un lenguaje de programación popular utilizado en el desarrollo de aplicaciones empresariales, aplicaciones móviles (Android) y sistemas embebidos.',
                ),
                Tecnologia(
                  link: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/240px-React-icon.svg.png',
                  tecologia: 'React.js',
                  descripcion: 'React es una biblioteca de JavaScript utilizada para construir interfaces de usuario interactivas y componentes reutilizables en aplicaciones web.',
                ),
                Tecnologia(
                  link: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Node.js_logo.svg/240px-Node.js_logo.svg.png',
                  tecologia: 'Node.js',
                  descripcion: 'Node.js es un entorno de tiempo de ejecución de JavaScript del lado del servidor que permite construir aplicaciones web rápidas y escalables.',
                ),  
              ],
            ),
          ),
        ),
      );
    
  }
}

class Tecnologia extends StatelessWidget {

  final String link;
  final String tecologia;
  final String descripcion;
  
  const Tecnologia({
    super.key, required this.link, required this.tecologia, required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        link,
        width: 100,
        height: 100,
      ),
      title: Text(tecologia,
      style: const TextStyle(
          color: Color.fromRGBO(0, 26, 78, 0.6),
          fontWeight: FontWeight.w200),
          ),
      subtitle: Text(descripcion),
    );
  }
}