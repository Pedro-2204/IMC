import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final _alturaController = TextEditingController();
    final _pesoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC do Pedro/Marcela"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Icon(Icons.fitness_center),

          TextField(
            controller: _pesoController,
            decoration: InputDecoration(
              label: Text("Peso: ")
            ),
          ),
          TextField(
            controller: _alturaController,
            decoration: InputDecoration(
              label: Text("Altura: ")
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          var peso = double.parse(_pesoController.value.text);
          var altura = double.parse(_alturaController.value.text);
          var imc = 0.0;
          if (altura > 0.0) {
            imc = peso / (altura*altura);
          }

          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Seu IMC é $imc"),
          ));
        },
      child: const Icon(Icons.calculate),
      ),
    );
  }
}