import 'package:flutter/material.dart';

main(){runApp(MaterialApp(
  home: Calculator(),
  theme: ThemeData(
    primarySwatch:Colors.brown,
    buttonColor: Colors.amber

  ),
));}
class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController t1=TextEditingController(text: "0");
  TextEditingController t2=TextEditingController(text: "0");
  var num1,num2,sum;

  void  doADD(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1+num2;
    });
  }
  void  doSub(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1-num2;
    });
  }
  void  doMul(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1*num2;
    });
  }
  void  doDiv(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1~/num2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left:15.0 ,right: 15.0,bottom: 19.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                style: TextStyle(fontSize: 25),
                keyboardType: TextInputType.numberWithOptions(signed: false),
                decoration: InputDecoration(
                  hintText: 'Enter Number one',

                ),
                controller: t1,

              ),
              Divider(height: 40,),
              TextField(
                style: TextStyle(fontSize: 25),
                keyboardType: TextInputType.numberWithOptions(signed: false),
                decoration: InputDecoration(
                    hintText: 'Enter Number tow'
                ),
                controller: t2,
              ),
              Divider(height: 12,),
              Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
                RaisedButton(onPressed: doADD,child: Text('Add',style: TextStyle(color: Colors.white),),
                  padding: EdgeInsets.all(19),
                  shape: CircleBorder(side: BorderSide(width: 4.9,color: Colors.blue)),
                  color: Colors.amber,
                ),
                SizedBox(width: 1,),
                RaisedButton(onPressed: doSub,child: Text('Sub',style: TextStyle(color: Colors.white),),
                  padding: EdgeInsets.all(19),
                  shape: CircleBorder(side: BorderSide(width: 4.9,color: Colors.grey)),
                  color: Colors.brown,
                ),
                SizedBox(width: 1,),
                RaisedButton(onPressed: doMul,child: Text('Mul',style: TextStyle(color: Colors.white),),
                  padding: EdgeInsets.all(19),
                  shape: CircleBorder(side: BorderSide(width: 4.9,color: Colors.black)),
                  color: Colors.blueAccent,
                ),
                SizedBox(width: 1,),
                RaisedButton(onPressed: doDiv,child: Text('Div',style: TextStyle(color: Colors.white),),
                  padding: EdgeInsets.all(19),
                  shape: CircleBorder(side: BorderSide(width: 4.9,color: Colors.brown)),
                  color: Colors.lime,
                ),
                SizedBox(width: 1,),
                

              ],),
              Padding(
                padding: const EdgeInsets.only(top: 30,right:200 ),
                child: Text('Out number :$sum ',style: TextStyle(fontSize:19,fontWeight: FontWeight.bold ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
