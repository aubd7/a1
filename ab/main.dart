import 'package:exam/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'PHOTO'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(


        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Center(child: Text(widget.title)),
      ),
      body: Center(


        child: Column(


          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(children: [
              Image.asset('assets/images/img.jpg',height: 200,width: 200,),
              Image.asset('assets/images/img.jpg',height: 200,width: 200,),

              Container(
                margin: EdgeInsets.only(left:40,right:10),

                child: ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: () {

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Home()));


                  },
                  child: const Text('Home'),
                ),
              )
            ],),



          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
