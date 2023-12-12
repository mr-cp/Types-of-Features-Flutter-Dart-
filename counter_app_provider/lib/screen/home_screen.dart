import 'package:counter_app_provider/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('all...');
    final counterProvider =
        Provider.of<CounterProvider>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<CounterProvider>(
                builder: (context, value, child) => Text(
                  value.counter.toString(),
                  style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      print('Increment');
                      counterProvider.increment();
                      // context.read<CounterProvider>().increment();
                    },
                    child: const Text(
                      'Increase',
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      print('decrement');
                      //  Provider.of<CounterProvider>(context, listen: false).decrement();
                      // context.read<CounterProvider>().decrement();
                      counterProvider.decrement();
                    },
                    child: const Text(
                      'Decrease',
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
