//Código feito por arthur L. kroenke, MArcos Gabriel, Alisson, João e Guilherme, Sesi senai Itajai SC, 17/11/2022
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: linguagem(), debugShowCheckedModeBanner: false));
}

class linguagem extends StatefulWidget {
  const linguagem({super.key});

  @override
  State<linguagem> createState() => _linguagemState();
}

class _linguagemState extends State<linguagem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Linguagens",
            style: const TextStyle(color: Color.fromARGB(255, 253, 253, 253)),
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
                      "• Estudo do texto: as sequências discursivas e os gêneros textuais no sistema de comunicação e informação - modos de organização da composição textual; atividades de produção escrita e de leitura de textos gerados nas diferentes esferas sociais - públicas e privadas."),
                  pularLinha(),
                  funcaoText(
                      "• Estudo das práticas corporais: a linguagem corporal como integradora social e formadora de identidade - performance corporal e identidades juvenis; possibilidades de vivência crítica e emancipada do lazer; mitos e verdades sobre os corpos masculino e feminino na sociedade atual; exercício físico e saúde; o corpo e a expressão artística e cultural; o corpo no mundo dos símbolos e como produção da cultura; práticas corporais e autonomia; condicionamentos e esforços físicos; o esporte;. a dança; as lutas; os jogos; as brincadeiras."),
                  pularLinha(),
                  funcaoText(
                      "• Produção e recepção de textos artísticos: interpretação e representação do mundo para o fortalecimento dos processos de identidade e cidadania – Artes Visuais: estrutura morfológica, sintática, o contexto da obra artística, o contexto da comunidade. Teatro: estrutura morfológica, sintática, o contexto da obra artística, o contexto da comunidade, as fontes de criação. Música: estrutura morfológica, sintática, o contexto da obra artística, o contexto da comunidade, as fontes de criação. Dança: estrutura morfológica, sintática, o contexto da obra artística, o contexto da comunidade, as fontes de criação. Conteúdos estruturantes das linguagens artísticas (Artes Visuais, Dança, Música, Teatro), elaborados a partir de suas estruturas morfológicas e sintáticas; inclusão, diversidade e multiculturalidade: a valorização da pluralidade expressada nas produções estéticas e artísticas das minorias sociais e dos portadores de necessidades especiais educacionais."),
                  pularLinha(),
                  funcaoText(
                      "• Estudo do texto literário: relações entre produção literária e processo social, concepções artísticas, procedimentos de construção e recepção de textos - produção literária e processo social; processos de formação literária e de formação nacional; produção de textos literários, sua recepção e a constituição do patrimônio literário nacional; relações entre a dialética cosmopolitismo/localismo e a produção literária nacional; elementos de continuidade e ruptura entre os diversos momentos da literatura brasileira; associações entre concepções artísticas e procedimentos de construção do texto literário em seus gêneros (épico/narrativo, lírico e dramático) e formas diversas.; articulações entre os recursos expressivos e estruturais do texto literário e o processo social relacionado ao momento de sua produção; representação literária: natureza, função, organização e estrutura do texto literário; relações entre literatura, outras artes e outros saberes."),
                  pularLinha(),
                  funcaoText(
                      "• Estudo dos aspectos linguísticos em diferentes textos: recursos expressivos da língua, procedimentos de construção e recepção de textos - organização da macroestrutura semântica e a articulação entre idéias e proposições (relações lógicosemânticas)."),
                  pularLinha(),
                  funcaoText(
                      "• Estudo do texto argumentativo, seus gêneros e recursos linguísticos: argumentação: tipo, gêneros e usos em língua portuguesa - formas de apresentação de diferentes pontos de vista; organização e progressão textual; papéis sociais e comunicativos dos interlocutores, relação entre usos e propósitos comunicativos, função sociocomunicativa do gênero, aspectos da dimensão espaçotemporal em que se produz o texto."),
                  pularLinha(),
                  funcaoText(
                      "• Estudo dos aspectos linguísticos da língua portuguesa: usos da língua: norma culta e variação linguística - uso dos recursos linguísticos em relação ao contexto em que o texto é constituído: elementos de referência pessoal, temporal, espacial, registro linguístico, grau de formalidade, seleção lexical, tempos e modos verbais; uso dos recursos linguísticos em processo de coesão textual: elementos de articulação das sequências dos textos ou à construção da micro estrutura do texto."),
                  pularLinha(),
                  funcaoText(
                      "• Estudo dos gêneros digitais: tecnologia da comunicação e informação: impacto e função social - o texto literário típico da cultura de massa: o suporte textual em gêneros digitais; a caracterização dos interlocutores na comunicação tecnológica; os recursos linguísticos e os gêneros digitais; a função social das novas tecnologias."),
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
          color: Color.fromARGB(
            255,
            249,
            177,
            76,
          ),
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
}
