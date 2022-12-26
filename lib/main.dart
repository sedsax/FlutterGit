import 'package:flutter/material.dart';
import 'package:kod_tasarim/sayfa2.dart';

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
        primarySwatch: Colors.red,
      ),
      home: Sayfa1(baslik: 'Flutter Proje Sayfa1'),
      routes: { '/sayfa2':(context) => (Sayfa2())},
    );
  }
}

class Sayfa1 extends StatefulWidget {
  const Sayfa1({Key? key, required this.baslik}) : super(key: key);
  final String baslik;

  @override
  State<Sayfa1> createState() => _Sayfa1State();
}

class _Sayfa1State extends State<Sayfa1> {
  int sayac = 0;
  String ad = "";
  String soyad = "";
  String textAd = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.baslik),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color(0xb8ff0000),
                        Color(0xa1ff0000),
                        Color(0x80ff0000),
                      ],
                   // begin: Alignment.bottomRight,
                  ),
                ),
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    ad = value;
                  });
                },
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Text(textAd, style: TextStyle(fontSize: 20),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          textAd = ad;
                        });
                      },
                      child: Text(
                        "Text' i Göster",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      )
                  ),
                  SizedBox(width: 30,),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          textAd = "";
                        });
                      },
                      child: Text(
                        "Text' i Gizle",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Text(
                  'SAYAÇ',
                  style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 30,),
              Text(
                'Sayacın Değeri: ${sayac}',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if(sayac>0){
                        sayac--;
                      }
                    });
                  },
                  child: Text(
                    "-",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/sayfa2');
                  }, 
                  child: Text("Sayfa2")
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            sayac++;
          });
        },
        tooltip: 'Artırma',
        child: Icon(Icons.add),
      ),
    );
  }
}
