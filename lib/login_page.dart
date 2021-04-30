import 'package:flutter/material.dart';
import 'package:vize/register_page.dart';
import 'hakkında.dart';
import 'markalar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController t1 = TextEditingController();
  //TextEditingController t2 = TextEditingController();

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
              controller: t1,
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

  Widget _Girisyap() => RaisedButton(
        child: Text("Giriş Yap"),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Markalar(MusteriNo: t1.text,)));
        },
      );

  Widget _UyeOl()=> RaisedButton(
    child: Text("Üye Ol"),
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
    },
  );

  Widget _Hakkinda() => RaisedButton(
    child: Icon(Icons.info_outline),
  onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder:(context)=>Hakkinda()));
  },);

}
