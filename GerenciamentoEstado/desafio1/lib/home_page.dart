import 'package:flutter/material.dart';
import 'package:gerenciamento_estado/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = HomeController.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
          child: Card(
        elevation: 0,
        color: Colors.grey,
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Teste ${controller.value}')),
        ),
      )),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            controller.increment();
          }),
    );
  }
}
