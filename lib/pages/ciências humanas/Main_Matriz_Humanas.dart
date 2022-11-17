import 'dart:ui';

import 'comparea1_page.dart';
import 'comparea2_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'comparea3_page.dart';
import 'comparea4_page.dart';
import 'comparea5_page.dart';
import 'comparea6_page.dart';

class Main_Matriz_Humanas extends StatefulWidget {
  const Main_Matriz_Humanas({super.key});

  @override
  State<Main_Matriz_Humanas> createState() => _Main_Matriz_HumanasState();
}

class _Main_Matriz_HumanasState extends State<Main_Matriz_Humanas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matriz de Ciencias Humanas'),
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
              Text('Ciencias Humanas', style: TextStyle(fontSize: 25)),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
              ),
              criarCompetencia(
                "Competência de área 1 - Compreender os elementos culturais que constituem as identidades ",
                comparea1_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 2 - Compreender as transformações dos espaços geográficos como produto das relações socioeconômicas e culturais de poder.",
                comparea2_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 3 - Compreender a produção e o papel histórico das instituições sociais, políticas e econômicas, associando-as aos diferentes grupos, conflitos e movimentos sociais.",
                comparea3_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 4 - Entender as transformações técnicas e tecnológicas e seu impacto nos processos de produção, no desenvolvimento do conhecimento e na vida social.",
                comparea4_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 5 - Utilizar os conhecimentos históricos para compreender e valorizar os fundamentos da cidadania e da democracia, favorecendo uma atuação consciente do indivíduo na sociedade.",
                comparea5_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 6 - Compreender a sociedade e a natureza, reconhecendo suas interações no espaço em diferentes contextos históricos e geográficos.",
                comparea6_page(),
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
