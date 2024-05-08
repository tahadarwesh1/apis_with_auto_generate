import 'package:apis_with_auto_generate/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/home_cubit.dart';
import '../cubit/home_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Objects'),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        child: BlocBuilder<HomeCubit, HomeState>(
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
              error: (message) => Center(child: Text(message.toString())),
              loading: () => const Center(child: CircularProgressIndicator()),
            );
          },
        ),
        onRefresh: () {
          BlocProvider.of<HomeCubit>(context).getObjects();
          return Future<void>.value();
        },
      ),
    );
  }
}
