//Código feito por arthur L. kroenke, MArcos Gabriel, Alisson, João e Guilherme, Sesi senai Itajai SC, 17/11/2022
import 'comparea1_page.dart';
import 'comparea2_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'comparea3_page.dart';
import 'comparea4_page.dart';
import 'comparea5_page.dart';
import 'comparea6_page.dart';
import 'comparea7_page.dart';

class Main_Matriz_Page extends StatefulWidget {
  const Main_Matriz_Page({super.key});

  @override
  State<Main_Matriz_Page> createState() => _Main_Matriz_PageState();
}

class _Main_Matriz_PageState extends State<Main_Matriz_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matriz de Matematica'),
        backgroundColor: const Color.fromARGB(255, 72, 61, 139),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 700,
              minWidth: 600,
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
              ),
              Text('Matematica', style: TextStyle(fontSize: 25)),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
              ),
              criarCompetencia(
                "Competência de área 1 - Construir significados para os números naturais, inteiros, racionais e reais.",
                comparea1_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 2 - Utilizar o conhecimento geométrico para realizar a leitura e a representação da realidade e agir sobre ela.",
                comparea2_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 3 - Construir noções de grandezas e medidas para a compreensão da realidade e a solução de problemas do cotidiano.",
                comparea3_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 4 - Construir noções de variação de grandezas para a compreensão da realidade e a solução de problemas do cotidiano.",
                comparea4_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 5 - Modelar e resolver problemas que envolvem variáveis socioeconômicas ou técnico-científicas, usando representações algébricas.",
                comparea5_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 6 - Interpretar informações de natureza científica e socialobtidas da leitura de gráficos e tabelas, realizando previsão de tendência, extrapolação, interpolação e interpretação.",
                comparea6_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 7 - Compreender o caráter aleatório e não-determinístico dos fenômenos naturais e sociais e utilizar instrumentos adequados para medidas, determinação de amostras e cálculos de probabilidade para interpretar informações de variáveis apresentadas em uma distribuição estatística.",
                comparea7_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  criarCompetencia(competencia, link, context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(alignment: Alignment.center),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => link,
          ));
        },
        child: Text(
          competencia,
          style: TextStyle(color: Color.fromARGB(255, 72, 61, 139)),
        ));
  }
}
