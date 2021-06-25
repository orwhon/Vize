import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vize/grafik.dart';
import 'package:vize/register_page.dart';
import 'hakkında.dart';
import 'markalar.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  String Email;
  String Password;

  LoginPage({this.Email, this.Password});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController musterino = TextEditingController();

  girisYap() {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: widget.Email, password: widget.Password)
        .then((kullanici) => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Markalar(
                      MusteriNo: musterino.text,
                    ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            child: Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/Kapak.jpg'),
              Text(
                'ALP OTO GALERİ',
                style: TextStyle(
                  fontFamily: 'KronaOne',
                  fontSize: 30,
                ),
              ),
              Divider(
                height: 35,
              ),
              TextFormField(
                controller: musterino,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                  labelText: "Müşteri No",
                  labelStyle: TextStyle(color: Colors.purple),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                  labelText: "Şifre",
                  labelStyle: TextStyle(color: Colors.purple),
                  border: OutlineInputBorder(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _Girisyap(),
                    _Hakkinda(),
                    _UyeOl(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    )));
  }

  Widget _Girisyap() =>
      RaisedButton(child: Text("Giriş Yap"), onPressed: girisYap);

  Widget _UyeOl() => RaisedButton(
        child: Text("Üye Ol"),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RegisterPage()));
        },
      );

  Widget _Hakkinda() => RaisedButton(
        child: Icon(Icons.info_outline),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Hakkinda()));
        },
      );



}
