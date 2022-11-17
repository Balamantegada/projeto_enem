import 'package:projeto_enem/pages/linguagens/comparea8_page.dart';
import 'package:projeto_enem/pages/linguagens/comparea9_page.dart';
import 'comparea1_page.dart';
import 'comparea2_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'comparea3_page.dart';
import 'comparea4_page.dart';
import 'comparea5_page.dart';
import 'comparea6_page.dart';
import 'comparea7_page.dart';

class matriz_linguagens_page extends StatefulWidget {
  const matriz_linguagens_page({super.key});

  @override
  State<matriz_linguagens_page> createState() => _matriz_linguagens_pageState();
}

class _matriz_linguagens_pageState extends State<matriz_linguagens_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Matriz de Referência de Linguagens, Códigos e suas Tecnologias'),
        backgroundColor: const Color.fromARGB(255, 72, 61, 139),
      ),
      body: SingleChildScrollView(
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
              Text('Linguagens, Códigos e suas Tecnologias',
                  style: TextStyle(fontSize: 25)),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
              ),
              criarCompetencia(
                "Competência de área 1 - Aplicar as tecnologias da comunicação e da informação na escola, no trabalho e em outros contextos relevantes para sua vida.",
                comparea1_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 2 - Conhecer e usar lingua(s) estrangeira(s) moderna(s) como instrumento de acesso a informacoes e a outras culturas e grupos sociais",
                comparea2_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 3 - Compreender e usar a linguagem corporal como relevante para a própria vida, integradora social e formadora da identidade.",
                comparea3_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 4 - Compreender a arte como saber cultural e estetico gerador de significação e integrador da organização do mundo e da própria identidade.",
                comparea4_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 5 - Analisar, interpretar e aplicar recursos expressivos das linguagens, relacionando textos com seus contextos, mediante a natureza, função, organização, estrutura das manifestações, de acordo com as condições de produçãoe recepção.",
                comparea5_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 6 - Compreender e usar os sistemas simbólicos das diferentes linguagens como meios de organização cognitiva da realidade pela constituição designificados, expressão, comunicação e informação.",
                comparea6_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 7 - Confrontar opiniões e pontos de vista sobre as diferentes linguagens e suas manifestações específicas.",
                comparea7_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 8 - Compreender e usar a língua portuguesa como língua materna, geradora de significação e integradora da organização do mundo e da própria identidade.",
                comparea8_page(),
                context,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              ),
              criarCompetencia(
                "Competência de área 9 - Entender os princípios, a natureza, a função e o impacto das tecnologias da comunicação e da informação na sua vida pessoal e social, no desenvolvimento do conhecimento, associando-o aos conhecimentos científicos, às linguagens que lhes dão suporte, às demais tecnologias, aos processos de produção e aos problemas que se propõem solucionar.",
                comparea9_page(),
                context,
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
