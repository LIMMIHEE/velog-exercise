import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:velog_exercise/data/provider/count_provider.dart';

class ProviderLayout extends StatelessWidget {
  const ProviderLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CountProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '${counter.count}',
          style: const TextStyle(fontSize: 50),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              heroTag: 'provider_decrement',
              onPressed: () {
                counter.decrement();
              },
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              heroTag: 'provider_increment',
              onPressed: () {
                counter.increment();
              },
              child: const Icon(Icons.add),
            ),
          ],
        )
      ],
    );
  }
}
