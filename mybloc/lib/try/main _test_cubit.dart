// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:mybloc/counterCubit.dart';
// import 'package:mybloc/widgets/inc_dec_button.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: BlocProvider(
//         create: (context) => CounterCubit(),
//         child: MyHomePage(title: 'Flutter Demo Home Page'),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   MyHomePage({super.key, required this.title});

//   final String title;

//   final CounterCubit counterCubit = CounterCubit();

//   @override
//   Widget build(BuildContext context) {
//     final counterCubit = BlocProvider.of<CounterCubit>(context);
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text(title),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text(
//                 'You have pushed the button this many times:',
//               ),
//               BlocBuilder<CounterCubit, int>(
//                 bloc: counterCubit,
//                 builder: (context, state) {
//                   return Text(
//                     '$state',
//                     style: Theme.of(context).textTheme.headlineMedium,
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//         floatingActionButton: const IncDecButton());
//   }
// }



// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:provider/provider.dart';

// // void main() {
// //   runApp(
// //     MultiBlocProvider(
// //       proivders: [
// //         BlocProvider<CounterCubit>(create: (_) => CounterCubit()),
// //       ],
// //       child: MyApp(),
// //     ),
// //   );
// // }

// // class MyApp extends StatefulWidget {
// //   const MyApp({Key? key}) : super(key: key);

// //   @override
// //   State<MyApp> createState() => _MyAppState();
// // }

// // class _MyAppState extends State<MyApp> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(home: HomePage());
// //   }
// // }

// // class HomePage extends StatelessWidget {
// //   const HomePage({
// //     super.key,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Dashboard"),
// //         actions: const [],
// //       ),
// //       body: SingleChildScrollView(
// //         child: Container(
// //           padding: const EdgeInsets.all(10.0),
// //           child: Column(
// //             children: [MyBlocWidget()],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class CounterCubit extends Cubit<int> {
// //   CounterCubit() : super(0);

// //   void increment() => emit(state + 1);
// // }

// // class MyBlocWidget extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     final counterCubit = context.read<CounterCubit>();

// //     return Column(
// //       children: <Widget>[
// //         BlocBuilder<CounterCubit, int>(
// //           builder: (context, state) {
// //             return Text('Counter: $state');
// //           },
// //         ),
// //         ElevatedButton(
// //           onPressed: () => counterCubit.increment(),
// //           child: Text('Increment bloc'),
// //         ),
// //       ],
// //     );
// //   }
// // }

// // class MyWidget extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     final counter = Provider.of<Counter>(context);

// //     return Column(
// //       children: <Widget>[
// //         Text('Counter: ${counter.value}'),
// //         ElevatedButton(
// //           onPressed: () => counter.increment(),
// //           child: Text('Increment'),
// //         ),
// //       ],
// //     );
// //   }
// // }

// // class Counter with ChangeNotifier {
// //   int _value = 0;

// //   int get value => _value;

// //   void increment() {
// //     _value++;
// //     notifyListeners();
// //   }
// // }
