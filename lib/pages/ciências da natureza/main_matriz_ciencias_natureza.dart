import 'dart:ui';

import 'comparea1_page.dart';
import 'comparea2_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'comparea3_page.dart';
import 'comparea4_page.dart';
import 'comparea5_page.dart';
import 'comparea6_page.dart';
import 'comparea7_page.dart';
import 'comparea8_page.dart';

class main_matriz_ciencias_natureza extends StatefulWidget {
  const main_matriz_ciencias_natureza({super.key});

  @override
  State<main_matriz_ciencias_natureza> createState() =>
      _main_matriz_ciencias_naturezaState();
}

class _main_matriz_ciencias_naturezaState
    extends State<main_matriz_ciencias_natureza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Matriz de Ciências da Natureza'),
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
              Text('Ciências da Natureza e suas Tecnologias',
                  style: TextStyle(fontSize: 25)),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
              ),
              criarCompetencia(
                "Competência de área 1 – Compreender as ciências naturais e as tecnologias a elas associadas como construções humanas, percebendo seus papéis nos processos de produção e no desenvolvimento econômico e social da humanidade.",
                comparea1_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 2 – Identificar a presença e aplicar as tecnologias associadas às ciências naturais em diferentes contextos.",
                comparea2_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 3 – Associar intervenções que resultam em degradação ou conservação ambiental a processos produtivos e sociais e a instrumentos ou ações científico-tecnológicos.",
                comparea3_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 4 – Compreender interações entre organismos e ambiente, em particular aquelas relacionadas à saúde humana, relacionando conhecimentos científicos, aspectos culturais e características individuais.",
                comparea4_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 5 – Entender métodos e procedimentos próprios das ciências naturais e aplicá-los em diferentes contextos.",
                comparea5_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 6 – Apropriar-se de conhecimentos da física para, em situações problema, interpretar, avaliar ou planejar intervenções científicotecnológicas.",
                comparea6_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 7 – Apropriar-se de conhecimentos da química para, em situações problema, interpretar, avaliar ou planejar intervenções científicotecnológicas.",
                comparea7_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 8 – Apropriar-se de conhecimentos da biologia para, em situações problema, interpretar, avaliar ou planejar intervenções científicotecnológicas.",
                comparea8_page(),
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
