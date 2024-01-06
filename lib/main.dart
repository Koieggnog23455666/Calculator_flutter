import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/uiWidget/rounded_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme:const TextTheme(
          headline1:TextStyle(fontFamily: 'Poppins',fontStyle: FontStyle.normal,fontSize: 23),
        ),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomePageState();
}
class _HomePageState extends State<MyHomePage>{
  var num1=TextEditingController();
  var num2=TextEditingController();
  var sum,diff,mul,div;
  var result="" ;
  var count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
       children: [
         Container(
           width: double.infinity,
           height: double.infinity,
           color: Colors.lightGreenAccent.shade100,),
            Center(
              child: FractionallySizedBox(
                widthFactor: .6,
                heightFactor: .7,
                child: Container(
                width: 400,
                 height: 600,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(20),
                 ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Container(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(margin: EdgeInsets.only(right: 10),child: FaIcon(FontAwesomeIcons.calculator)),
                          Text('CALCULATOR',style: TextStyle(fontFamily: 'Poppins'),),
                        ],
                      ),),
                      FractionallySizedBox(
                        widthFactor: 0.9,
                        child: Container(
                          width: 200,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.redAccent,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(margin: EdgeInsets.only(right: 10),child: Text('Enter First Number ',style: TextStyle(color:Colors.black54,fontFamily: 'Poppins',fontSize: 13),),),
                              Container(
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                ),
                                child: TextField(
                                  cursorColor: Colors.tealAccent,
                                  cursorWidth: 1.5,
                                  controller: num1,
                                  style: TextStyle(fontFamily: 'Poppins'),
                                  keyboardType: TextInputType.number,
                                  decoration:
                                  InputDecoration(
                                      fillColor: Colors.grey,
                                      filled: true,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide: BorderSide(
                                              color: Colors.black87,
                                              width: 3
                                          )
                                      )
                                  ) ,
                                ),
                              ),
                            ],

                          ),
                        ),
                      ),

                      Container(height: 13,),
                      FractionallySizedBox(
                        widthFactor: 0.9,
                        child:
                        Container(
                          width: 200,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.redAccent,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(margin: EdgeInsets.only(right: 7),child: Text('Enter Second Number ',style: TextStyle(color:Colors.black54,fontFamily: 'Poppins',fontSize: 13),),),
                              Container(
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                ),
                                child: TextField(
                                  style: TextStyle(fontFamily: 'Poppins'),
                                  cursorColor: Colors.tealAccent,
                                  cursorWidth: 1.5,
                                  controller: num2,
                                  keyboardType: TextInputType.number,
                                  decoration:
                                  InputDecoration(

                                    fillColor: Colors.grey,
                                      filled: true,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide: BorderSide(
                                              color: Colors.black87,
                                              width: 3
                                          )
                                      ),

                                  ) ,
                                ),
                              ),
                            ],

                          ),
                        ),
                      ),
                      FractionallySizedBox(

                        widthFactor: 0.5,// 50% of parent width
                        child: Container(

                          // height:180,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                            borderRadius: BorderRadius.circular(12)
                          ),
                          padding: EdgeInsets.all(10),

                          child: Wrap(

                            spacing: 10,
                            runSpacing: 10,
                            alignment: WrapAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(onPressed: (){
                                var no1=int.parse(num1.text.toString());
                                var no2=int.parse(num2.text.toString());
                                  setState(() {
                                    sum=no1+no2;
                                    result="The Addition of $no1 and $no2 is $sum";
                                  });
                              }, child: Text('ADD',style: TextStyle(fontFamily: 'Poppins',fontSize: 10),)),
                              ElevatedButton(onPressed: (){
                                var no1=int.parse(num1.text.toString());
                                var no2=int.parse(num2.text.toString());
                                setState(() {
                                  diff=no1-no2;
                                  result="The Subtraction of $no1 and $no2 is $diff";
                                });
                              }, child: Text('SUBTRACT',style: TextStyle(fontFamily: 'Poppins',fontSize: 10),)),
                              ElevatedButton(onPressed: (){
                                var no1=int.parse(num1.text.toString());
                                var no2=int.parse(num2.text.toString());
                                setState(() {
                                  mul=no1*no2;
                                  result="The Multiplication of $no1 and $no2 is $mul";
                                });
                              }, child: Text('MULTIPLY',style: TextStyle(fontFamily: 'Poppins',fontSize: 10),)),
                              ElevatedButton(onPressed: (){
                                var no1=int.parse(num1.text.toString());
                                var no2=int.parse(num2.text.toString());
                                setState(() {
                                  div=no1/no2;
                                  result="The Division of $no1 and $no2 is $div";
                                });
                              }, child: Text('DIVIDE',style: TextStyle(fontFamily: 'Poppins',fontSize: 10),)),

                            ],
                          )
                        ),
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.6,
                        child: Container(
                          width: 200,
                          height: 50,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.redAccent,
                          ),
                          child: Center(
                            child: Text(result,textAlign: TextAlign.start,style: TextStyle(
                              fontFamily: 'Poppins',fontSize: 10,
                            ),),
                          ),
                        ),
                      )

                    ],

                  ),
                ),

              ),
            ),


       ],
      )
    );
  }

}