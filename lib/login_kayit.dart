import 'package:flutter/material.dart';
import 'package:kod_tasarim/login_anasayfa.dart';

class LoginKayit extends StatelessWidget {
  const LoginKayit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kayıt olun..."),
      ),
      body: SingleChildScrollView(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/florid-snow-globe.png'),
            SizedBox(
              height: 20,
            ),
            Text(
              "Bize Katılmak için",
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.arrow_downward, color: Colors.red,size: 50,),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                fillColor: Colors.red[100],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.person_add,
                  color: Colors.grey[800],
                ),
                hintText: 'Ad Soyad',
                hintStyle: TextStyle(
                  color: Colors.grey[800],
                ),
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                fillColor: Colors.red[100],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.grey[800],
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Colors.grey[800],
                ),
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                fillColor: Colors.red[100],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey[800],
                ),
                hintText: 'Parola',
                hintStyle: TextStyle(
                  color: Colors.grey[800],
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return LoginAnasayfa();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                minimumSize: Size(300, 40),
              ),
              child: Text('Kayıt Ol'),
            ),
          ],
        ),
      ),
    );
  }
}
