//Código feito por arthur L. kroenke, MArcos Gabriel, Alisson, João e Guilherme, Sesi senai Itajai SC, 17/11/2022
import 'package:flutter/material.dart';
import 'linguagem.dart';
import 'matematica.dart';
import 'humana.dart';
import 'natureza.dart';

class Objetos_conehcimento_page extends StatefulWidget {
  const Objetos_conehcimento_page({super.key});

  @override
  State<Objetos_conehcimento_page> createState() =>
      _Objetos_conehcimento_pageState();
}

class _Objetos_conehcimento_pageState extends State<Objetos_conehcimento_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Objeto de Conhecimento",
          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        shadowColor: const Color.fromARGB(255, 32, 178, 170),
        elevation: 15,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 72, 61, 139),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/backgroundIncial.png",
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 110, 0, 0),
              child: Column(children: [
                TextButton(
                  child: Text(
                    "1. Linguagem, Códigos e suas Tecnologias",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(
                        255,
                        249,
                        177,
                        76,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => linguagem()));
                  },
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 230, 0, 0),
              child: Column(children: [
                TextButton(
                  child: Text(
                    "2. Matemática e suas Tecnologias",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(
                        255,
                        249,
                        177,
                        76,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => matematica()));
                  },
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 350, 0, 0),
              child: Column(children: [
                TextButton(
                  child: Text(
                    "3. Ciências da Natureza e suas Tecnologias",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(
                        255,
                        249,
                        177,
                        76,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => natureza()));
                  },
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 460, 0, 0),
              child: Column(children: [
                TextButton(
                  child: Text(
                    "4. Ciências Humanas e suas Tecnologias",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(
                        255,
                        249,
                        177,
                        76,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => humana()));
                  },
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
