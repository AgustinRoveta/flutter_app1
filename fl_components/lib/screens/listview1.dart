import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Bioshock Infinit'
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 1'),
        ),
        body: ListView(
          children: [
            ...options.map((game) => ListTile(
/*.map tiene un elemento, que sera del mismo tipo que los elementos de la 
lista y retornará un nuevo elemento (en este caso un ListTile que tendra 
como title un widget Text que tomará los elementos de la lista)
  */
                      title: Text(game),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList(),
                


            //ListTile(
            //title: Text('Que ondis?'),)
          ],
        )
        );
  }
}
