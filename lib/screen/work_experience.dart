import 'package:flutter/material.dart';

void main() => runApp(const WorkExperience());

class WorkExperience extends StatelessWidget {
  const WorkExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Informacion personal'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      );
    
  }
}