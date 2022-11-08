//Código feito pro arthur L. kroenke, Sesi senai Itajai SC, 08/11/2022
import 'package:flutter/material.dart';

class pagina_sobre_mim extends StatefulWidget {
  const pagina_sobre_mim({super.key});

  @override
  State<pagina_sobre_mim> createState() => _pagina_sobre_mimState();
}

class _pagina_sobre_mimState extends State<pagina_sobre_mim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre mim"),
        backgroundColor: Color.fromARGB(255, 249, 178, 76),
      ),
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
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 600,
                      maxWidth: 350,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.account_circle,
                                size: 50,
                              ),
                              Text(
                                " Alisson Alves \n-\n Desinger e assistente",
                                style: TextStyle(fontSize: 25),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Image.asset("assets/images/sobremim/alisson.jpg"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.account_circle,
                                size: 50,
                              ),
                              Padding(padding: EdgeInsets.all(20)),
                              Text(
                                "Marcos Gabriel \n-\n Programador",
                                style: TextStyle(fontSize: 25),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Image.asset("assets/images/sobremim/marcos.jpg"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.account_circle,
                                size: 50,
                              ),
                              Padding(padding: EdgeInsets.all(20)),
                              Text(
                                "Arthur Kroenke \n-\n Programador",
                                style: TextStyle(fontSize: 25),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Image.asset("assets/images/sobremim/arthur.jpg"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.account_circle,
                                size: 50,
                              ),
                              Padding(padding: EdgeInsets.all(20)),
                              Text(
                                "Guilherme Paes \n-\n Programador",
                                style: TextStyle(fontSize: 25),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Image.asset("assets/images/sobremim/guilherme.jpg"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.account_circle,
                                size: 50,
                              ),
                              Padding(padding: EdgeInsets.all(20)),
                              Text(
                                "João Pedro \n-\n Programador",
                                style: TextStyle(fontSize: 25),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Image.asset("assets/images/sobremim/joão.jpg"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
