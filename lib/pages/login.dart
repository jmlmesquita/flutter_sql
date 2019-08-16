import 'package:flutter/material.dart';
import 'package:flutter_sql/pages/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  OutlineInputBorder oiBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: Color.fromARGB(255, 1, 160, 199)));

  TextStyle estiloTexto = TextStyle(fontFamily: "Montserrat", fontSize: 20);

  var _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Form(
            key: _formkey,
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(35.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 160,
                        child: Image.asset("images/logo.png"),
                      ),
                      SizedBox(height: 50),
                      TextFormField(
                        validator: (String texto) {
                          if (texto.isEmpty)
                            return "Preencha o e-mail";
                          if (!RegExp(
                                  r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                              .hasMatch(texto))
                            return "E-mail inválido";
                        },
                        style: estiloTexto,
                        decoration: InputDecoration(
                          hintText: "Digite o e-mail",
                          border: oiBorder,
                          enabledBorder: oiBorder,
                        ),
                      ),
                      SizedBox(height: 22),
                      TextFormField(
                        validator: (String texto){
                          if (texto.isEmpty)
                            return "Preencha a senha";
                          if (texto.length<6)
                            return "Senha não pode ter menos de 6 caracteres";
                         
                        },
                        obscureText: true,
                        style: estiloTexto,
                        decoration: InputDecoration(
                          hintText: "Digite a senha",
                          border: oiBorder,
                          enabledBorder: oiBorder,
                        ),
                      ),
                      SizedBox(height: 100),
                      RaisedButton(
                        elevation: 5,
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        onPressed: () {
                          if (_formkey.currentState.validate()) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Home()),
                            );
                          }
                        },
                        child: Text(
                          "Login",
                          style: estiloTexto.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Color.fromARGB(255, 1, 160, 199),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
