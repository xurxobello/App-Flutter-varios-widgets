import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const ['Megaman','Metal Gear','Super Smash','Final Fantasy'];
  
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
        elevation: 0,
        backgroundColor: Colors.orange,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.numbers_outlined, color: Colors.green),
          title: Text (options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.purple,),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ), 
        separatorBuilder: ( _ , __ ) => const Divider(), 
        )
    );
  }
}