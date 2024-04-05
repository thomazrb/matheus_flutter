import 'package:flutter/material.dart';

class ItemDisplay extends StatefulWidget {
  const ItemDisplay({super.key});

  @override
  State<ItemDisplay> createState() => _ItemDisplayState();
}

class _ItemDisplayState extends State<ItemDisplay> {
  String nome = 'Teste';
  String valor = 'R\$ 120,00';
  String codigo = '123';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            codigo,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Nome do Bem: '),
              Text(
                nome,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Valor do Bem: '),
              Text(
                valor,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
