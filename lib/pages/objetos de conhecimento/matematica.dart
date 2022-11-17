//Código feito por arthur L. kroenke, MArcos Gabriel, Alisson, João e Guilherme, Sesi senai Itajai SC, 17/11/2022
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: matematica(), debugShowCheckedModeBanner: false));
}

class matematica extends StatefulWidget {
  const matematica({super.key});

  @override
  State<matematica> createState() => _matematicaState();
}

class _matematicaState extends State<matematica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Matemática",
            style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          shadowColor: const Color.fromARGB(255, 32, 178, 170),
          elevation: 15,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 72, 61, 139),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Stack(children: <Widget>[
            SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/backgroundIncial.png",
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Column(
                children: [
                  funcaoText(
                      "Conhecimentos numéricos: operações em conjuntos numéricos (naturais, inteiros, racionais e reais), desigualdades, divisibilidade, fatoração, razões e proporções, porcentagem e juros, relações de dependência entre grandezas, sequências e progressões, princípios de contagem."),
                  pularLinha(),
                  funcaoText(
                      "• Conhecimentos geométricos: características das figuras geométricas planas e espaciais; grandezas, unidades de medida e escalas; comprimentos, áreas e volumes; ângulos; posições de retas; simetrias de figuras planas ou espaciais; congruência e semelhança de triângulos; teorema de Tales; relações métricas nos triângulos; circunferências; trigonometria do ângulo agudo."),
                  pularLinha(),
                  funcaoText(
                      "• Conhecimentos de estatística e probabilidade: representação e análise de dados; medidas de tendência central (médias, moda e mediana); desvios e variância; noções de probabilidade."),
                  pularLinha(),
                  funcaoText(
                      "• Conhecimentos algébricos: gráficos e funções; funções algébricas do 1.º e do 2.º graus, polinomiais, racionais, exponenciais e logarítmicas; equações e inequações; relações no ciclo trigonométrico e funções trigonométricas."),
                  pularLinha(),
                  funcaoText(
                      "• Conhecimentos algébricos/geométricos: plano cartesiano; retas; circunferências; paralelismo e perpendicularidade, sistemas de equações."),
                ],
              ),
            ),
          ]),
        ));
  }

  funcaoText(string) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 72, 61, 139),
        border: Border.all(
          color: Color.fromARGB(255, 72, 61, 139),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Text(string,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 17,
              color: Color.fromARGB(255, 255, 255, 255),
            )),
      ),
    );
  }

  pularLinha() {
    return SizedBox(
      height: 25,
    );
  }

  fundoTexto() {
    return SizedBox();
  }
}
