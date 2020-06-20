import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_bloc/counter.dart';
import 'package:provider_bloc/counter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MultiProvider(
       providers: [
         ChangeNotifierProvider<CounterBloc>.value(
          value: CounterBloc(),
         )
       ],
          child: MaterialApp(

         home: CounterPage(),

       ),
     );
  }
  
}