
import 'package:exam/home.dart';
import 'package:flutter/material.dart';



class Go extends StatelessWidget {




  Go({super.key});
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
              child: Center(child: Text("Second Activity",style: TextStyle(fontSize: 20,color: Colors.white))),
            ),
            Container(
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextFormField(
                  style: const TextStyle(fontSize: 18),
                  decoration: const InputDecoration(hintText: 'Phone/Web'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:200),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left:100,right:5),

                    child: ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: const Text('web'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(30),
                    child: ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: const Text('WEB'),
                    ),
                  ),

                ],
              ),
            ),
            Container(
              child: Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Home(),), (route) => false);
                  },
                  child: const Text('back Home'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}