import 'package:flutter/material.dart';
import 'package:pratica_03/screens/cadastro.dart';
import 'package:pratica_03/screens/login.dart';

class Lista extends StatelessWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Cardápios'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Login();
              }));
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("Cardápio ${index + 1}"),
            trailing: Text("Cardápio do ano ${index + 1}00${index + 1}"),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Cadastro();
          }));
        },
      ),
    );
  }
}
