import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissable Widget"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
        child: Dismissible(
          secondaryBackground: Container(
            color: Colors.lightGreen,
            child: Icon(Icons.delete,size: 30,),
          ),
          background: Container(
            color: Colors.pink,
            child: Icon(Icons.delete,size: 30,),
          ),
          key: ValueKey(4),
          child: ListTile(
            title: Text('MR Mostakim',style: TextStyle(
              fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold
            ),),
            subtitle: Text("Motiur Rahman Mostakim",style: TextStyle(
              fontSize: 17,
            ),),
            trailing: Icon(Icons.ac_unit),
          ),
        ),
      )),
    );
  }
}