

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List listString=["1","2","3","4","5","6","7","8","9","10"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),


      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
                itemCount: listString.length,
                itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      onTap: (){
                        var snackBar = SnackBar(
                          backgroundColor: Colors.red,
                            content: Text('${listString[index]}'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      title: Text("${listString[index]}"),
                    ),
                  ),
                );

            }),
          )
        ],
      ),
    );
  }
}
