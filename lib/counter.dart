import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_bloc/counter_bloc.dart';
import 'package:provider_bloc/decrement.dart';
import 'package:provider_bloc/increment.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = Provider.of<CounterBloc>(context);
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                counterBloc.counter.toString(),
                style: TextStyle(fontSize: 50.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Increment(),
                  Decrement()
                ],
              )
            ],
          ),
          ),
      ),
    );
  }
}