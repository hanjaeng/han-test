import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  //Property
  late int count;

  @override
  void initState(){
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Count up & Down'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                '현재 클릭수는 $count 입니다.',
                style: TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              FloatingActionButton(                      // 가운데 버튼
                shape: CircleBorder(),
                onPressed: (){
                count++;
                setState((){});
                },
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                child: Icon(Icons.add),
              ),

              Padding(
                padding: const EdgeInsets.all(30.0),
                child: FloatingActionButton(          // 가운데 버튼
                shape: CircleBorder(),
                onPressed: (){
                  count--;
                  setState((){});
                },
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                child: Icon(Icons.remove,
              ),
              ),
            ),
            ],)
            
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(     // 우측하단
      //         onPressed: (){
      //           count++;
      //           setState((){});
      //         },
      //         backgroundColor: Colors.blue,
      //         foregroundColor: Colors.white,
      //         child: Icon(Icons.add),
      //       ),      
      
    // floatingActionButton: ElevatedButton(       // 우측하단
    //   onPressed: (){
    //     count++;
    //     setState((){});
    //   },
    //   child: Text("ADD")
    // ),

    );
  }
}