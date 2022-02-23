


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget{
  @override
  _BmiScreenState createState() => _BmiScreenState();
}
class _BmiScreenState extends State<BmiScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator'
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
               children: [
                 Expanded(
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.ac_unit_sharp,size:70.0,),
                         SizedBox(
                           height: 15,
                         ),
                         Text(
                           'MALE',
                           style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       ],
                     ),
                     decoration:BoxDecoration(
                       borderRadius: BorderRadius.circular(10.0),
                       color: Colors.pink.shade200,
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 15,
                 ),
                 Expanded(
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.ac_unit_sharp,size:70.0,),
                         SizedBox(
                           height: 15,
                         ),
                         Text(
                           'MALE',
                           style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       ],
                     ),
                     decoration:BoxDecoration(
                       borderRadius: BorderRadius.circular(10.0),
                       color: Colors.pink.shade200,
                     ),
                   ),
                 ),
               ]
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.brown.shade200,
            ),
          ),
           Expanded(
             child: Container(
              width: double.infinity,
              color: Colors.pink,
          ),
           ),
          Container(
            width: double.infinity,
            color: Colors.pink.shade900,
            child: MaterialButton(onPressed: (){},
            child: Text(
              'CALCULATE',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),),
          )
        ],
      ),
    );
  }

}