import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}
int n=0;
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  

  @override
  State<MyApp> createState() => _MyAppState();
}
Random random=Random();
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Lottery App")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("Lottery winning number is 5")),
            SizedBox(height: 20,),
            Container(
              height: 250,
              width: 300,
              decoration:BoxDecoration(
                color: Colors.grey.withOpacity(.45),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child:n==5 ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done, color: Colors.green,size: 35,),
                    SizedBox(height: 20,),
                    Text("You have won the lottery.\nYou are billionare now.",textAlign: TextAlign.center,)
                  ],
                ):
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error, color: Colors.red,size: 35,),
                    SizedBox(height: 20,),
                    Text("your number is $n.\nbetter luck next time.",textAlign: TextAlign.center,)
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            n= random.nextInt(10);
            setState(() {

            });
            print(n);
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}


