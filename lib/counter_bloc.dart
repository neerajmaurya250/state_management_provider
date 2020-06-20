import 'package:flutter/material.dart';
import 'package:provider_bloc/increment.dart';

class CounterBloc extends ChangeNotifier{
 int _counter = 0;
 int get counter => _counter;

 set counter(int val){
   _counter = val;
   notifyListeners();
 }

 increment(){
   counter = counter + 1;
 }

 decrement(){
   if(counter>0){
    counter = counter - 1;
   }
   
 }
}