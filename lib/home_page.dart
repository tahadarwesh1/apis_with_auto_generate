import 'dart:developer';

import 'package:apis_with_auto_generate/models/object_model.dart';

import 'cubit/my_cubit.dart';
import 'cubit/my_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<MyCubit>(context).getObjects();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Objects'),
        centerTitle: true,
      ),
      body: BlocBuilder<MyCubit, MyState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            success: (objects) {
              return ListView.separated(
              itemCount: objects.length,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(objects[index].name ?? ""),
                  subtitle: Text(objects[index].data?.color ?? ""),
                  leading: Text(objects[index].data?.capacity ?? ""),
                );
              },
            );
            },
            error: (message) =>  Center(child: Text(message.toString())),
            loading: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
