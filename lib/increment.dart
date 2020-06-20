import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_bloc/counter_bloc.dart';

class Increment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    return IconButton(
      icon: Icon(Icons.add_circle),
      onPressed: () => counterBloc.increment(),
    );
  }
}