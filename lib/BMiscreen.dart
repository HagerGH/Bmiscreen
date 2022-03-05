


import 'dart:math';

import 'package:calculator/Bmi_Result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget{
  @override
  _BmiScreenState createState() => _BmiScreenState();
}
class _BmiScreenState extends State<BmiScreen>{
 bool isMale=true;
 double height=120.0;
  int weight=40;
  int age=20;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator'
        ),
        backgroundColor:Colors.pink.shade900,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
               children: [
                 Expanded(
                   child: GestureDetector(
                     onTap: (){
                      setState(() {
                       // color=Colors.amber.shade100;
                        isMale= true;
                      });
                     },
                     child: Container(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Image(
                             image: AssetImage('assets/image/male1.png'),
                             height: 80,
                             width: 80,
                           ),
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
                         color:  isMale? Colors.amber.shade100 : Colors.pink.shade200,
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 15,
                 ),
                 Expanded(
                   child: GestureDetector(
                     onTap: (){
                       setState(() {
                         isMale= false;
                       });
                     },
                     child: Container(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Image(
                             image: AssetImage('assets/image/female.png'),
                             height: 80,
                             width: 80,
                           ),
                           SizedBox(
                             height: 15,
                           ),
                           Text(
                             'FEMALE',
                             style: TextStyle(
                               fontSize: 25,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                         ],
                       ),
                       decoration:BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0),
                         color:  !isMale ? Colors.amber.shade100 : Colors.pink.shade200,
                       ),
                     ),
                   ),
                 ),
               ]
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0
              ),
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.pink.shade200,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'CM',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),

                    ),
                    SliderTheme(
                      data:SliderThemeData(
                          thumbColor: Colors.black,
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10)),
                    child:  Slider(value: height,
               max: 220.0,
                 min: 80.0,
              activeColor: Colors.black,
                      inactiveColor: Color(0xFF8D8E98),
              onChanged: (value){
            setState(() {
              height= value;
            });
                      },
                    ),
    ),
  ], ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.pink.shade100,
                ),
              ),
            ),
          ),
           Expanded(
             child:Padding(
               padding: const EdgeInsets.all(10.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  Expanded(
                    child: Container(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'weight',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed:(){
                                setState(() {
                                  weight--;
                                });
                              },
                                heroTag: weight-- ,
                                mini: true,
                              child:Icon(Icons.remove),
                              backgroundColor: Colors.black,),
                              FloatingActionButton(onPressed:(){
                                setState(() {
                                  weight++;
                                });
                              },
                                heroTag:  weight++ ,
                                mini: true,
                                child:Icon(Icons.add),
                              backgroundColor: Colors.black,),
                            ],
                          ),
                        ],
                      ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color:Colors.pink[900],
                    ),
                    ),
                  ),
                   SizedBox(
                     width: 20,
                   ),
                   Expanded(
                     child: Container(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text(
                             'Age',
                             style: TextStyle(
                               fontSize: 25,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           Text(
                             '$age',
                             style: TextStyle(
                               fontSize: 25,
                               fontWeight: FontWeight.w900,
                             ),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               FloatingActionButton(onPressed:(){
                                 setState(() {
                                   age--;
                                 });
                               },
                                 heroTag: age--,
                                 mini: true,
                                 child:Icon(Icons.remove),
                             backgroundColor: Colors.black,  ),
                               FloatingActionButton(onPressed:(){
                                 setState(() {
                                   age++;
                                 });
                               },
                                 heroTag: age++,
                                 mini: true,
                                 child:Icon(Icons.add),
                              backgroundColor: Colors.black,  ),

                             ],
                           ),
                         ],
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0),
                         color:Colors.pink[900],
                       ),
                     ),
                   ),
                 ],
               ),
             ),
           ),
          Container(
            width: double.infinity,
            color: Colors.pink.shade900,
            child: MaterialButton(onPressed: (){
               double  result=weight /pow(height/100 ,2);
               print(result.round());
               Navigator.push(
                   context,
                   MaterialPageRoute(
                       builder: (context)=>BmiResult(
                         age: age,
                         male: isMale,
                         result: result.round(),
                       ),
                   ), );
            },
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