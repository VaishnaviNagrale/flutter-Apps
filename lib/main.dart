import 'package:flutter/material.dart';
void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Colors.grey,
            appBar: AppBar(
              backgroundColor: Colors.deepPurple,
              title: const Center(
                child: Text('UI Demo📱',style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            body:  const SnackBarPage(),
    ),
    );
  }
}

class SnackBarPage extends StatelessWidget{
  const SnackBarPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: <Widget>[
          ElevatedButton(
          onPressed: () {
        final snackBar = SnackBar(
          content: const Text('YOU CHOOSE THE WRONG OPTION 😑'),
           backgroundColor: (Colors.red),
           action: SnackBarAction(
             textColor: Colors.black,
             label: 'Undo↩',
             onPressed: () {
             },
           ),
         );
         ScaffoldMessenger.of(context).showSnackBar(snackBar);
       },
       child: const Text(
       'Welcome Click here! 1️⃣',
       ),
          ),
          ElevatedButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: const Text('HURRY SUCCESS 😍'),
                backgroundColor: (Colors.green),
                action: SnackBarAction(
                  textColor: Colors.black,
                  label: 'Back',
                  onPressed: () {
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text(
              'Welcome Click here! 2️⃣',
            ),
          ),
        ],
      ),
    );
  }
}
















// import 'dart:js';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   pushToScreen(BuildContext context) {
//     Navigator.of(context).push(
//       MaterialPageRoute(builder: (_) => OtherScreen()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add, color: Colors.white),
//         onPressed: () => pushToScreen(context),
//       ),
//     );
//   }
// }
//
// class OtherScreen extends StatelessWidget {
//   pushToScreen(BuildContext context) {
//     Navigator.of(context).push(
//       MaterialPageRoute(builder: (_) => OtherScreen2()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Other screen'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add, color: Colors.white),
//         onPressed: () => pushToScreen(context),
//       ),
//     );
//   }
// }
//
// class OtherScreen2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Other other screen'),
//       ),
//     );
//   }
// }
// class MyAlertDialog extends StatelessWidget {
//   final String title;
//   final String content;
//   final List<Widget> actions;
//
//   MyAlertDialog({
//     this.title,
//     this.content,
//     this.actions = const [],
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     var body1;
//     var title;
//     return AlertDialog(
//       title: Text(
//         this.title,
//         style: Theme.of(context).textTheme.title,
//       ),
//       actions: this.actions,
//       content: Text(
//         this.content,
//         style: Theme.of(context).textTheme.body1,
//       ),
//     );
//   }
// @override
// void initState() {
//   //super.initState();
//
//   Stream<int> every3seconds =
//   Stream<int>.periodic(Duration(seconds: 3), (t) => t);
//
//   every3seconds.listen((t) {
//     showDialog(
//       context: content,
//       builder: (BuildContext dialogContext) {
//         return MyAlertDialog(title: 'Title $t', content: 'Dialog content');
//       },
//     );
//   });
// }
//


/*import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'UIDemo';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: SimpleAppBarPopupMenuButton(
      Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatelessWidget(),
        ),
      ),
      ),
    );
  }
}
class SimpleAppBarPopupMenuButton extends StatelessWidget {
  const SimpleAppBarPopupMenuButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // MaterialApp with
    // debugShowCheckedModeBanner false and title
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AppBar Popup Menu Button',
        // scaffold with appbar
        home: Scaffold(
        // appbar with text
        appBar: AppBar(
        title: Text('AppBar Popup Menu Button'),
    // body of the scaffold with center text.
    body: Center(
    child: Text("Press the 3 Point Button Up!"),
    ),
    ),
    );
    }
}
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Show Snack bar'),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Awesome Snack bar!'),
            action: SnackBarAction(
              label: 'Action',
              onPressed: () {
                // Code to execute.
              },
            ),
          ),
        );
      },
    );
  }
}


*/









// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget{
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar( backgroundColor: Colors.deepPurple,
//           title: const Text('UIDemo',style: TextStyle(fontWeight: FontWeight.bold),),
//           ),
//           body: Builder(builder: (context){
//             return Center(
//               child: ElevatedButton(
//                 onPressed: (){
//                 final message =  SnackBar(
//                     content: const Text('You choose wrong option'),
//                 action: SnackBarAction(
//                   label: 'Done',
//                   onPressed: (){},
//                 ),
//                 );
//                 Scaffold.of(context);
//               }, child: const Text("Click me"),
//               ),
//             );
//           }
//           ),
//     ),
//     );
//   }
// }
// void main(){
//   runApp( const SnackBarDemo());
// }
//
// class SnackBarDemo extends StatelessWidget{
//   const SnackBarDemo({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.deepPurple,
//           title: const Text('UIDemo',style: TextStyle(fontWeight: FontWeight.bold),
//               actions :[
//                 PopupMenuButton<MenuItem>(
//                   onSelected: (value){
//
//               },
//               itemBuilder: (context)=>const[
//                  PopupMenuItem(
//                    child: Text('Item 1'),
//                  ),
//                 ],
//               ),
//               ],
//           ),
//         ),
//         body: const SnackBarPage(),
//     ),
//     );
//   }
// }
// class SnackBarPage extends StatelessWidget {
//   const SnackBarPage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () {
//           final snackBar = SnackBar(
//             content: const Text('Welcome to UI Activity! \n',style: TextStyle(fontWeight: FontWeight.bold),semanticsLabel: 'Click on 3 vertical dots to see the menu.'),
//             action: SnackBarAction(
//               label: 'Undo',
//               onPressed: () {
//                 // Some code to undo the change.
//               },
//             ),
//           );
//           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//         },
//         child: const Text('Time Picker'),
//       ),
//     );
//   }
// }