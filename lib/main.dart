import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toast Message',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('Go to the Second page'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => SecondPage()));
            }),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('Go to the First page'),
            onPressed: () {
              Navigator.pop(ctx);
            }),
      ),
    );
  }
}

// class MyPage extends StatelessWidget {
//   const MyPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.teal,
//       body: SafeArea(
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               // width: 100,
//               height: 100,
//               color: Colors.white,
//               child: Text('Container 1'),
//             ),
//             SizedBox(
//               // height: 20.0,
//               width: 30.0,
//               child: Text("box2"),
//             ),
//             Container(
//               // width: 100,
//               height: 100,
//               color: Colors.blue,
//               child: Text('Container 2'),
//             ),
//             Container(
//               // width: 100,
//               height: 100,
//               color: Colors.red,
//               child: Text('Container 3'),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyPage extends StatelessWidget {
//   const MyPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Toast Message'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: (){
//             flutterToast();
//           },
//           child:Text('Toast'),
//           style: ButtonStyle(
//             backgroundColor: MaterialStateColor.resolveWith((states) => Color.fromRGBO(10,10,10,0))
//           ),
//         ),
//       )
//     );
//   }
// }
//
// void flutterToast(){
//   Fluttertoast.showToast(msg: "Flutter!!",
//   gravity: ToastGravity.BOTTOM,
//     backgroundColor: Colors.redAccent,
//     fontSize: 20.0,
//     textColor: Colors.white,
//     toastLength: Toast.LENGTH_SHORT
//   );
// }
