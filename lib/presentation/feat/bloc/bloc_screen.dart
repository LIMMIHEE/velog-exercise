import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velog_exercise/data/bloc/counter_bloc.dart';
import 'package:velog_exercise/data/bloc/counter_event.dart';
import 'package:velog_exercise/data/bloc/counter_state.dart';
import 'package:velog_exercise/presentation/widget/common/scaffold_layout.dart';

class BlocScreen extends StatelessWidget {
  const BlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldLayout(
      child: BlocProvider(
        create: (context) => CounterBloc(),
        child: Center(
          child: BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${state.count}',
                    style: const TextStyle(fontSize: 50),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FloatingActionButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(DecrementEvent());
                        },
                        child: const Icon(Icons.remove),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(IncrementEvent());
                        },
                        child: const Icon(Icons.add),
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
