import 'package:flutter/material.dart';
import 'package:flutter_sql/pages/login.dart';



class Home extends StatelessWidget {
  TextStyle estiloTexto = TextStyle(fontFamily: "Montserrat", fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Usuário logado com sucesso",
              style: TextStyle(fontFamily: "Montserrat", fontSize: 20),
            ),
            SizedBox(height: 100),
            RaisedButton(
              onPressed: () {Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage()),
              );
              },
              child: Text("Logout",
                style: estiloTexto.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              elevation: 5,
              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              color: Color.fromARGB(255, 1, 160, 199),
            )
          ],
        ),
      ),
    );
  }
}
