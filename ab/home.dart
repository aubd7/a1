



import 'package:exam/Go.dart';
import 'package:exam/Rotate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {


  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
              child: Center(child: Text("Home Activity",style: TextStyle(fontSize: 20,color: Colors.white))),
            ),
            Container(
              child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: TextFormField(

                        style: const TextStyle(fontSize: 18,),
                        decoration: const InputDecoration(hintText: 'Name'),
                        controller: usernameController,
                      ),
                    ),

                  ]
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:110),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    child: Row(

                      children: [
                        Container(
                          margin: EdgeInsets.only(left:40,right:10),

                          child: ElevatedButton(
                            style: ButtonStyle(),
                            onPressed: () {

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Go()));


                            },
                            child: const Text('Go'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: ButtonStyle(),
                            onPressed: () {

                              usernameController.clear();

                            },
                            child: const Text('Clear'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 70),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          child: ElevatedButton(
                            style: ButtonStyle(),
                            onPressed: () {
                              SystemNavigator.pop();
                            },
                            child: const Text('Close'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left:40,right:10),

                          child: ElevatedButton(
                            style: ButtonStyle(),
                            onPressed: () {

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Rotate()));


                            },
                            child: const Text('Rotate'),
                          ),
                        ),
                      ],
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