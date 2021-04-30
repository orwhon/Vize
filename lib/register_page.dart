import 'package:flutter/material.dart';
import 'package:vize/login_page.dart';

class RegisterPage extends StatefulWidget {

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                  labelText: "Kullanıcı Adı Giriniz",
                  labelStyle: TextStyle(color: Colors.purple),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
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
                    _KayitOl(),
                    _GeriDon(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }

  Widget _KayitOl() => RaisedButton(
        child: Text("Kayıt Ol"),
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));},
      );

  Widget _GeriDon()=>RaisedButton(
    child: Text("Geri Dön"),
    onPressed:(){
      Navigator.pop(context);
    } ,);
}
