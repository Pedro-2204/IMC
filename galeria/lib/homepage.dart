import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Galeria"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Teste"),
            Text("Teste"),
            SizedBox(
              height: 500, 
              child: Image.network(
              "https://pbs.twimg.com/media/FaQKxP6X0AEvMgQ.jpg"),
            ),
          ],
        ),
      ),

    );
  }
}