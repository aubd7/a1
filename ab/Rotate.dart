import 'package:exam/home.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Rotate extends StatelessWidget {
  Rotate({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              width: 400,
              height: 60,
              child: Center(child: Text("Rotate Activity",style: TextStyle(fontSize: 20,color: Colors.white))),
            ),
            Container(
              child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Container(
                        width: 260,
                        height: 100,
                        color: Colors.blueGrey,
                        child: Center(
                          child: Text('========',style: TextStyle(color: Colors.red,fontSize: 20,),


                          ),
                        ),
                      ),
                    ),

                  ]
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:150),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left:100,right:10),

                    child: ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () {

                      },
                      child: const Text('Rotate'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Home(),), (route) => false);
                      },
                      child: const Text('BACK Home'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}