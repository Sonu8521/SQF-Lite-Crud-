import 'package:flutter/material.dart';
import 'InsertPage.dart';
import 'ViewPage.dart';


class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sqlite"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InsertPage()),
                );
              },
              child: const Text("Insert"),
            ),
            const SizedBox(height: 20), // Added SizedBox for spacing
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>ViewPage()))
            //     // Navigator.push(
            //     //   context,
            //     //   MaterialPageRoute(builder: (context) => ViewPage()),
            //     // );
            //   },
            //   child: const Text("ViewPage Update and Delete"),
            // ),
            ElevatedButton(
                onPressed: () async{
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ViewPage(),));
                },
                child: const Text("ViewPage Update and Delete")),
          ],
        ),
      ),
    );
  }
}
