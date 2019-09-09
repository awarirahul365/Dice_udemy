
import 'package:flutter/material.dart';
import "dart:math";

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int num1=1;
  int num2=2;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title:Center(
            child:  Text("DICE ROLLER",style: TextStyle(fontSize: 15.0),),
          )
          
        ),
        backgroundColor: Colors.teal,
        body:SafeArea(
          child:Column(
            children: <Widget>[
              Container(
                child:Center(
                  child: Text("ROLL THE DICE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),
                ), 
                width: double.infinity,
                height:150.0 ,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          num1=Random().nextInt(6)+1;
                        });

                      },
                      child: Image(image: AssetImage("images/dice$num1.png"),),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          num2=Random().nextInt(6)+1;
                        });
                      },
                      child: Image(image: AssetImage("images/dice$num2.png"),),
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Text("PLAYER 1",style: TextStyle(color: Colors.red,fontSize: 25.0),),
                    )
                    
                    
                  ),
                  Expanded(
                    child: Center(
                      child: Text("PLAYER 2",style: TextStyle(color: Colors.red,fontSize: 25.0),),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Text("NUMBER DISPLAYED",style: TextStyle(fontSize: 17.0,color: Colors.white),),
                    )
                  ),
                  Expanded(
                    child: Center(
                      child: Text("NUMBER DISPLAYED",style: TextStyle(fontSize: 17.0,color: Colors.white),),
                    )
                  )
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Text("$num1",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30.0),),
                    )
                  ),
                  Expanded(
                    child: Center(
                      child: Text("$num2",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30.0),),
                    )
                  )
                ],
              )
            ],
          )
            
          )
        )
      );
      
  }
}
