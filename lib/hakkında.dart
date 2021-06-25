import 'package:flutter/material.dart';

class Hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Uygulama Hakkında"),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 70.0,
                  backgroundImage: AssetImage('assets/images/Hakkinda1.png'),
                ),
                Divider(
                  height: 50,
                ),
                SizedBox(
                  width: 350,
                  child: Text(
                    'Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen "3301456" kodlu "Mobil Programlama" dersi kapsamında "193301044" numaralı "Orhun Alp ÇEKLİ" tarafından "25/06/2021" günü yapılmıştır.',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
