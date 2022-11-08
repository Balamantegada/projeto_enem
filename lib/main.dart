//Código feito pro arthur L. kroenke, Sesi senai Itajai SC, 08/11/2022
import 'package:flutter/material.dart';
import 'package:projeto_enem/pages/p%C3%A1ginaCadastro.dart';
import 'package:projeto_enem/pages/p%C3%A1ginaInicial.dart';
import 'package:projeto_enem/pages/p%C3%A1ginaSobreMim.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto Enem',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Projeto Enem'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController controleUsuario = TextEditingController();
  TextEditingController controleSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/backgroundLogin.png",
                  fit: BoxFit.cover,
                )),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/Logo.png",
                    width: 500,
                    height: 250,
                  ),
                  Form(
                    key: _formKey,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 400,
                        maxWidth: 300,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            contruirTextFieldUsuario(),
                            Padding(padding: EdgeInsets.all(10)),
                            contruirTextFieldSenha(),
                            Padding(padding: EdgeInsets.all(10)),
                            OutlinedButton.icon(
                              icon: Icon(
                                Icons.send,
                                size: 38,
                                color: Color.fromARGB(255, 43, 0, 160),
                              ),
                              style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10)),
                              label: Text(
                                "Confirmar",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 43, 0, 160),
                                    fontSize: 30),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  FocusScope.of(context)
                                      .requestFocus(new FocusNode());
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => pagina_inicial(),
                                  ));
                                }
                              },
                            ),
                            Padding(padding: EdgeInsets.all(10)),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "Não se cadastrou? ",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  TextButton(
                                      child: Text(
                                        "Clique aqui",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                      onPressed: () => {
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(
                                              builder: (context) =>
                                                  pagina_sobre_mim(),
                                            ))
                                          }),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  contruirTextFieldUsuario() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(fontSize: 12),
      decoration: InputDecoration(
          errorStyle: TextStyle(
            fontSize: 15.0,
          ),
          labelText: "Email ou usuário",
          labelStyle:
              TextStyle(color: Color.fromARGB(255, 72, 61, 139), fontSize: 30)),
      controller: controleUsuario,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Campo vazio';
        }
        if (value != "furry@gmail.com") {
          return 'Email incorreto';
        }
        return null;
      },
    );
  }

  contruirTextFieldSenha() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      style: TextStyle(fontSize: 12),
      decoration: InputDecoration(
          errorStyle: TextStyle(
            fontSize: 15.0,
          ),
          labelText: "Senha",
          labelStyle:
              TextStyle(color: Color.fromARGB(255, 43, 0, 160), fontSize: 30)),
      controller: controleSenha,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Campo vazio';
        }
        if (value != "123") {
          return 'Senha incorreta';
        }
        return null;
      },
    );
  }
}
