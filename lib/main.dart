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
            backgroundColor: Colors.blueGrey,
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
