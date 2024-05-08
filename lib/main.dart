import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'di.dart';
import 'features/home/presentation/cubit/bloc_observer.dart';
import 'features/home/presentation/cubit/home_cubit.dart';
import 'features/home/presentation/pages/home_page.dart';

void main() {
  setUpServiceLocator();
  Bloc.observer = const AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => getIt<HomeCubit>()..getObjects(),
        child: const HomePage(),
      ),
    );
  }
}
