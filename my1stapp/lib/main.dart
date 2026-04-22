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
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

//colume:縦分割　Row:横分割　Container:デザイン

      body: Column(
        children: [
          //上半分
          Expanded(
            flex: 2,
            child: Row(
              children: [
                //上半分を横に２分割
                Expanded(flex: 2, child: Text("count: $_counter")),
                Expanded(
                  child: Column(
                    children: [
                      //上右半分を縦に3分割
                      //カウント+１
                      Expanded(
                        child: FittedBox(
                          child: ElevatedButton(
                            onPressed:(){
                              setState(() {
                                _counter++;
                              });
                            } ,
                            child:Text("+1"),
                          )
                        ),
                      ),

                      //カウント－１
                      Expanded(
                        child: FittedBox(
                          child: ElevatedButton(
                            onPressed:(){
                              setState(() {
                                _counter--;
                              });
                            } ,
                            child:Text("-1"),
                          )
                        ),
                      ),

                      //カウントリセット
                      Expanded(
                        child: FittedBox(
                          child: ElevatedButton(
                            onPressed:(){
                              setState(() {
                                _counter = 0;
                              });
                            } ,
                            child:Text("reset"),
                          )
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),

          //下部分
          Expanded(
            child: Placeholder()
          ),

        ],
      ),
    );
  }
}
