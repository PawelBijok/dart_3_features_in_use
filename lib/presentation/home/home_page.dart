import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..init(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dart 3 features in use '),
        ),
        body: const _HomeBody(),
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return switch (state) {
          InitialHomeState _ => const Center(
              child: CircularProgressIndicator(),
            ),
          LoadingHomeState _ => const Center(
              child: CircularProgressIndicator(),
            ),
          LoadedHomeState s => Center(
              child: Text(s.allTodo.toString()),
            ),
          ErrorHomeState _ => const Placeholder(),
        };
      },
    );
  }
}
