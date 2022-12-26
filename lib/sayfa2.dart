import 'package:flutter/material.dart';

class Sayfa2 extends StatefulWidget {
  const Sayfa2({Key? key}) : super(key: key);

  @override
  State<Sayfa2> createState() => _Sayfa2State();
}

class _Sayfa2State extends State<Sayfa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa 2' ye Hoşgeldin"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("HELLOOO",style: TextStyle(fontSize: 20),),
            ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Anasayfa"),
            )
          ],
        ),
      ),
    );
  }
}
