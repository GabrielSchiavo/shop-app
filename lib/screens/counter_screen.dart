// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:shop_app/providers/counter.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = CounterProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo Contador'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(provider?.state.value.toString() ?? '0'),
            IconButton(
              onPressed: () {
                setState(() {
                  provider?.state.inc();
                });
                print(provider?.state.value);
              },
              icon: const Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  provider?.state.dec();
                });
                print(provider?.state.value);
              },
              icon: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
