import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ' '),
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('                   My RNW',style: TextStyle(
            fontSize :25,color: Colors.white ,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.redAccent,
      ),
      body: const Center(

        child:
            Text.rich(
             TextSpan(children: [
               TextSpan(text:
                      'Red & White \n'
                 ,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold ,
                letterSpacing: 3,
                 fontSize: 50,decoration: TextDecoration.underline,
                 wordSpacing: 2,decorationColor: Colors.red,),),
                 TextSpan(text:
                 '         Multimedia Education \n',style: TextStyle(
                   color: Colors.red,fontWeight: FontWeight.bold ,
                   fontSize: 20,height:-1.100,
                   wordSpacing: 2,decorationColor: Colors.redAccent,),),
                TextSpan(text:
               'Shaping "Skills" for "scaling" higher..!!!!',style: TextStyle(
                 color: Colors.red,fontWeight: FontWeight.bold ,
                 fontSize: 20,
                 wordSpacing: 2,decorationColor: Colors.redAccent,),),

             ],
              ),
            ),

      // This trailing comma makes auto-formatting nicer for build methods.
    ),
    );
  }
}
