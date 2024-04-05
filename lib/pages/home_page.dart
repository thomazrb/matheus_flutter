import 'package:flutter/material.dart';
import 'package:matheus/components/item_display.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool scanned = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Scanner de Patrimônio'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      scanned = true;
                    });
                  },
                  child: const Text('Escanear'),
                ),
                scanned
                    ? const ItemDisplay()
                    : const Text('Aguarde o Escaneamento...'),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      scanned = false;
                    });
                  },
                  child: const Text('Resetar'),
                ),
              ],
            ),
          ),
        ));
  }
}
