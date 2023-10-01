import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lim_course/cubit/counter_cubit.dart';
import 'package:lim_course/cubit/counter_state.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
          builder: (context, state) {
            return Scaffold(
              body: SafeArea(
                  child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).plus();
                      },
                      child: const Text('+'),
                    ),
                    Text('${BlocProvider.of<CounterCubit>(context).x}',
                        style: const TextStyle(fontSize: 50)),
                    FloatingActionButton(
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).minus();
                      },
                      child: const Text('-'),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).reset();
                      },
                      child: const Text('Reset'),
                    )
                  ],
                ),
              )),
            );
          },
          listener: (context, state) {}),
    );
  }
}
