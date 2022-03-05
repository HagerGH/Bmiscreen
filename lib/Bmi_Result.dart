
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget{
  final int result;
  final bool male;
  final int age;

  BmiResult({
    required this.result,
    required this.male,
    required this.age,
});



  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.pink.shade200,
     appBar: AppBar(
       backgroundColor: Colors.pink.shade900,
       title: Text(' BMI Result'),
     ),
     body:
     Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text(
             'Gender : ${male?'Male' :'Female'}',
             style: TextStyle(
               fontSize: 40,
               fontWeight: FontWeight.bold,
             ),
           ),
           Text(
               'Result : $result',
             style: TextStyle(
               fontSize: 40,
               fontWeight: FontWeight.bold,
             ),
           ),
           Text(
               'Age : $age',
             style: TextStyle(
               fontSize: 40,
               fontWeight: FontWeight.bold,
             ),
           ),
         ],
       ),
     ),
   );
  }
}