//Código feito por arthur L. kroenke, MArcos Gabriel, Alisson, João e Guilherme, Sesi senai Itajai SC, 17/11/2022
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: humana(), debugShowCheckedModeBanner: false));
}

class humana extends StatefulWidget {
  const humana({super.key});

  @override
  State<humana> createState() => _humanaState();
}

class _humanaState extends State<humana> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Humanas",
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
                      "• Diversidade cultural, conflitos e vida em sociedade o Cultura Material e imaterial; patrimônio e diversidade cultural no Brasil. • A Conquista da América. Conflitos entre europeus e indígenas na América colonial. A escravidão e formas de resistência indígena e africana na América. • História cultural dos povos africanos. A luta dos negros no Brasil e o negro na formação da sociedade brasileira. • História dos povos indígenas e a formação sócio-cultural brasileira. • Movimentos culturais no mundo ocidental e seus impactos na vida política e social."),
                  pularLinha(),
                  funcaoText(
                      "• Formas de organização social, movimentos sociais, pensamento político e ação do Estado o Cidadania e democracia na Antiguidade; Estado e direitos do cidadão a partir da Idade Moderna; democracia direta, indireta e representativa. o Revoluções sociais e políticas na Europa Moderna. o Formação territorial brasileira; as regiões brasileiras; políticas de reordenamento territorial. o As lutas pela conquista da independência política das colônias da América. o Grupos sociais em conflito no Brasil imperial e a construção da nação. o O desenvolvimento do pensamento liberal na sociedade capitalista e seus críticos nos séculos XIX e XX. o Políticas de colonização, migração, imigração e emigração no Brasil nos séculos XIX e XX. o A atuação dos grupos sociais e os grandes processos revolucionários do século XX: Revolução Bolchevique, Revolução Chinesa, Revolução Cubana. o Geopolítica e conflitos entre os séculos XIX e XX: Imperialismo, a ocupação da Ásia e da África, as Guerras Mundiais e a Guerra Fria. o Os sistemas totalitários na Europa do século XX: nazi-fascista, franquismo, salazarismo e stalinismo. Ditaduras políticas na América Latina: Estado Novo no Brasil e ditaduras na América. o Conflitos político-culturais pós-Guerra Fria, reorganização política internacional e os organismos multilaterais nos séculos XX e XXI. o A luta pela conquista de direitos pelos cidadãos: direitos civis, humanos, políticos e sociais. Direitos sociais nas constituições brasileiras. Políticas afirmativas. o Vida urbana: redes e hierarquia nas cidades, pobreza e segregação espacial."),
                  pularLinha(),
                  funcaoText(
                      "• Características e transformações das estruturas produtivas o Diferentes formas de organização da produção: escravismo antigo, feudalismo, capitalismo, socialismo e suas diferentes experiências. o Economia agro-exportadora brasileira: complexo açucareiro; a mineração no período colonial; a economia cafeeira; a borracha na Amazônia. o Revolução Industrial: criação do sistema de fábrica na Europa e transformações no processo de produção. Formação do espaço urbano-industrial. Transformações na estrutura produtiva no século XX: o fordismo, o toyotismo, as novas técnicas de produção e seus impactos. o A industrialização brasileira, a urbanização e as transformações sociais e trabalhistas. o A globalização e as novas tecnologias de telecomunicação e suas consequências econômicas, políticas e sociais. o Produção e transformação dos espaços agrários. Modernização da agricultura e estruturas agrárias tradicionais. O agronegócio, a agricultura familiar, os assalariados do campo e as lutas sociais no campo. A relação campo-cidade."),
                  pularLinha(),
                  funcaoText(
                      "• Os domínios naturais e a relação do ser humano com o ambiente o Relação homem-natureza, a apropriação dos recursos naturais pelas sociedades ao longo do tempo. Impacto ambiental das atividades econômicas no Brasil. Recursos minerais e energéticos: exploração e impactos. Recursos hídricos; bacias hidrográficas e seus aproveitamentos. o As questões ambientais contemporâneas: mudança climática, ilhas de calor, efeito estufa, chuva ácida, a destruição da camada de ozônio. A nova ordem ambiental internacional; políticas territoriais ambientais; uso e conservação dos recursos naturais, unidades de conservação, corredores ecológicos, zoneamento ecológico e econômico. o Origem e evolução do conceito de sustentabilidade. o Estrutura interna da terra. Estruturas do solo e do relevo; agentes internos e externos modeladores do relevo. o Situação geral da atmosfera e classificação climática. As características climáticas do território brasileiro. o Os grandes domínios da vegetação no Brasil e no mundo."),
                  pularLinha(),
                  funcaoText(
                      "• Representação espacial o Projeções cartográficas; leitura de mapas temáticos, físicos e políticos; tecnologias modernas aplicadas à cartografia."),
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
