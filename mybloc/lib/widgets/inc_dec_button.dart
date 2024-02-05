import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybloc/counterBloc.dart';
import 'package:mybloc/counterCubit.dart';

class IncDecButton extends StatelessWidget {
  const IncDecButton({super.key});

  @override
  Widget build(BuildContext context) {
    // menggunakan cubit
    // final counterCubit = BlocProvider.of<CounterCubit>(context);
    // menggunakan bloc
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          // menggunakan cubit
          // onPressed: counterCubit.increment,
          //
          // menggunakan bloc
          //
          // onPressed: () {
          //   counterBloc.add(CounterIncremented());
          // },
          // menggunakan multiple
          //
          onPressed: () {
            counterBloc.add(CounterIncremented());
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 10),
        FloatingActionButton(
          // menggunakan cubit
          // onPressed: counterCubit.decrement,
          //
          // menggunakan bloc
          // onPressed: () {
          //   // counterBloc.add(CounterDecrement()); SALAHHHHH
          // },
          // menggunakan multiple
          //
          onPressed: () {
            counterBloc.add(CounterDecremented());
          },
          tooltip: 'Decrement',
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
