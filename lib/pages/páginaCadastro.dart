//Código feito pro arthur L. kroenke, Sesi senai Itajai SC, 08/11/2022
import 'package:flutter/material.dart';
import 'package:projeto_enem/main.dart';

class pagina_cadastro extends StatefulWidget {
  const pagina_cadastro({super.key});

  @override
  State<pagina_cadastro> createState() => _pagina_cadastroState();
}

var globalUsuario = "";
var globalEmail = "";
var globalSenha = "";

class _pagina_cadastroState extends State<pagina_cadastro> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _usuario = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cadastro",
          style: TextStyle(color: Colors.white),
        ),
        shadowColor: Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 72, 61, 139),
      ),
      body: Center(
        child: Stack(children: <Widget>[
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/backgroundLogin.png",
                fit: BoxFit.cover,
              )),
          SingleChildScrollView(
            child: Container(
              child: Center(
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Cadastrar',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 30.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                          ),
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: 300,
                              minWidth: 200,
                            ),
                            child: Column(children: [
                              inputnome(),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                              ),
                              inputemail(),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                              ),
                              inputsenha(),
                            ]),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                          ),
                          OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.all(20),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  globalUsuario = _usuario.text;
                                  globalEmail = _email.text;
                                  globalSenha = _senha.text;
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => MyApp()),
                                  );
                                }
                              },
                              child: const Text(
                                'Cadastrar',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }

  inputnome() {
    return TextFormField(
      controller: _usuario,
      validator: (value) {
        if (value!.isEmpty) {
          return 'digite o seu nome de usuario';
        }
        if (value.length < 3) {
          return 'digite o seu nome de usuario com mais de 2 caracteres';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'nome de usuario',
        hintText: 'Ex: joão viado',
        contentPadding: EdgeInsetsDirectional.only(
            top: 0.0, bottom: 5.0, start: 5.0, end: 5.0),
        floatingLabelStyle: TextStyle(fontSize: 19.0),
        errorText: null,
      ),
    );
  }

  Widget inputsenha() {
    return TextFormField(
      controller: _senha,
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return 'digite a sua senha';
        }
        if (value.length < 3) {
          return 'digite a sua senha com mais de 2 caracteres';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Senha',
        hintText: 'Ex: joão viado',
        contentPadding: EdgeInsetsDirectional.only(
            top: 0.0, bottom: 5.0, start: 5.0, end: 5.0),
        floatingLabelStyle: TextStyle(fontSize: 19.0),
        errorText: null,
      ),
    );
  }

  Widget inputemail() {
    return TextFormField(
      controller: _email,
      validator: (value) {
        if (value!.isEmpty) {
          return 'digite o seu email';
        }
        if (value.length < 8) {
          return 'digite o seu nome de usuario com mais de 7 caracteres';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'email',
        hintText: 'Ex: a@gmail',
        contentPadding: EdgeInsetsDirectional.only(
            top: 0.0, bottom: 5.0, start: 5.0, end: 5.0),
        floatingLabelStyle: TextStyle(fontSize: 19.0),
        errorText: null,
      ),
    );
  }
}
