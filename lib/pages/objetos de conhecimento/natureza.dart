//Código feito por arthur L. kroenke, MArcos Gabriel, Alisson, João e Guilherme, Sesi senai Itajai SC, 17/11/2022
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: natureza(), debugShowCheckedModeBanner: false));
}

class natureza extends StatefulWidget {
  const natureza({super.key});

  @override
  State<natureza> createState() => _naturezaState();
}

class _naturezaState extends State<natureza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Natureza",
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Text(
                      "3.1 Física",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 40, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  funcaoText(
                      "• Conhecimentos básicos e fundamentais - Noções de ordem de grandeza. Notação Científica. Sistema Internacional de Unidades. Metodologia de investigação: a procura de regularidades e de sinais na interpretação física do mundo. Observações e mensurações: representação de grandezas físicas como grandezas mensuráveis. Ferramentas básicas: gráficos e vetores. Conceituação de grandezas vetoriais e escalares. Operações básicas com vetores."),
                  pularLinha(),
                  funcaoText(
                      "• O movimento, o equilíbrio e a descoberta de leis físicas – Grandezas fundamentais da mecânica: tempo, espaço, velocidade e aceleração. Relação histórica entre força e movimento. Descrições do movimento e sua interpretação: quantificação do movimento e sua descrição matemática e gráfica. Casos especiais de movimentos e suas regularidades observáveis. Conceito de inércia. Noção de sistemas de referência inerciais e não inerciais. Noção dinâmica de massa e quantidade de movimento (momento linear). Força e variação da quantidade de movimento. Leis de Newton. Centro de massa e a idéia de ponto material. Conceito de forças externas e internas. Lei da conservação da quantidade de movimento (momento linear) e teorema do impulso. Momento de uma força (torque). Condições de equilíbrio estático de ponto material e de corpos rígidos. Força de atrito, força peso, força normal de contato e tração. Diagramas de forças. Identificação das forças que atuam nos movimentos circulares. Noção de força centrípeta e sua quantificação. A hidrostática: aspectos históricos e variáveis relevantes. Empuxo. Princípios de Pascal, Arquimedes e Stevin: condições de flutuação, relação entre diferença de nível e pressão hidrostática."),
                  pularLinha(),
                  funcaoText(
                      "• Energia, trabalho e potência - Conceituação de trabalho, energia e potência. Conceito de energia potencial e de energia cinética. Conservação de energia mecânica e dissipação de energia. Trabalho da força gravitacional e energia potencial gravitacional. Forças conservativas e dissipativas."),
                  pularLinha(),
                  funcaoText(
                      "• A Mecânica e o funcionamento do Universo - Força peso. Aceleração gravitacional. Lei da Gravitação Universal. Leis de Kepler. Movimentos de corpos celestes. Influência na Terra: marés e variações climáticas. Concepções históricas sobre a origem do universo e sua evolução."),
                  pularLinha(),
                  funcaoText(
                      "• Fenômenos Elétricos e Magnéticos - Carga elétrica e corrente elétrica. Lei de Coulomb. Campo elétrico e potencial elétrico. Linhas de campo. Superfícies equipotenciais. Poder das pontas. Blindagem. Capacitores. Efeito Joule. Lei de Ohm. Resistência elétrica e resistividade. Relações entre grandezas elétricas: tensão, corrente, potência e energia. Circuitos elétricos simples. Correntes contínua e alternada. Medidores elétricos. Representação gráfica de circuitos. Símbolos convencionais. Potência e consumo de energia em dispositivos elétricos. Campo magnético. Imãs permanentes. Linhas de campo magnético. Campo magnético terrestre."),
                  pularLinha(),
                  funcaoText(
                      "• Oscilações, ondas, óptica e radiação - Feixes e frentes de ondas. Reflexão e refração. Óptica geométrica: lentes e espelhos. Formação de imagens. Instrumentos ópticos simples. Fenômenos ondulatórios. Pulsos e ondas. Período, frequência, ciclo. Propagação: relação entre velocidade, frequência e comprimento de onda. Ondas em diferentes meios de propagação."),
                  pularLinha(),
                  funcaoText(
                      "• O calor e os fenômenos térmicos - Conceitos de calor e de temperatura. Escalas termométricas. Transferência de calor e equilíbrio térmico. Capacidade calorífica e calor específico. Condução do calor. Dilatação térmica. Mudanças de estado físico e calor latente de transformação. Comportamento de Gases ideais. Máquinas térmicas. Ciclo de Carnot. Leis da Termodinâmica. Aplicações e fenômenos térmicos de uso cotidiano. Compreensão de fenômenos climáticos relacionados ao ciclo da água."),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: Text(
                      "3.2 Química",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 40, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  funcaoText(
                      "• Transformações Químicas - Evidências de transformações químicas. Interpretando transformações químicas. Sistemas Gasosos: Lei dos gases. Equação geral dos gases ideais, Princípio de Avogadro, conceito de molécula; massa molar, volume molar dos gases. Teoria cinética dos gases. Misturas gasosas. Modelo corpuscular da matéria. Modelo atômico de Dalton. Natureza elétrica da matéria: Modelo Atômico de Thomson, Rutherford, Rutherford-Bohr. Átomos e sua estrutura. Número atômico, número de mass"),
                  pularLinha(),
                  funcaoText(
                      "• Representação das transformações químicas - Fórmulas químicas. Balanceamento de equações químicas. Aspectos quantitativos das transformações químicas. Leis ponderais das reações químicas. Determinação de fórmulas químicas. Grandezas Químicas: massa, volume, mol, massa molar, constante de Avogadro. Cálculos estequiométricos."),
                  pularLinha(),
                  funcaoText(
                      "• Materiais, suas propriedades e usos - Propriedades de materiais. Estados físicos de materiais. Mudanças de estado. Misturas: tipos e métodos de separação. Substâncias químicas: classificação e características gerais. Metais e Ligas metálicas. Ferro, cobre e alumínio. Ligações metálicas. Substâncias iônicas: características e propriedades. Substâncias iônicas do grupo: cloreto, carbonato, nitrato e sulfato. Ligação iônica. Substâncias moleculares: características e propriedades. Substâncias moleculares: H2, O2, N2, Cl2, NH3, H2O, HCl, CH4. Ligação Covalente. Polaridade de moléculas. Forças intermoleculares. Relação entre estruturas, propriedade e aplicação das substâncias."),
                  pularLinha(),
                  funcaoText(
                      "• Água - Ocorrência e importância na vida animal e vegetal. Ligação, estrutura e propriedades. Sistemas em Solução Aquosa: Soluções verdadeiras, soluções coloidais e suspensões. Solubilidade. Concentração das soluções. Aspectos qualitativos das propriedades coligativas das soluções. Ácidos, Bases, Sais e Óxidos: definição, classificação, propriedades, formulação e nomenclatura. Conceitos de ácidos e base. Principais propriedades dos ácidos e bases: indicadores, condutibilidade elétrica, reação com metais, reação de neutralização."),
                  pularLinha(),
                  funcaoText(
                      "• Transformações Químicas e Energia - Transformações químicas e energia calorífica. Calor de reação. Entalpia. Equações termoquímicas. Lei de Hess. Transformações químicas e energia elétrica. Reação de oxirredução. Potenciais padrão de redução. Pilha. Eletrólise. Leis de Faraday. Transformações nucleares. Conceitos fundamentais da radioatividade. Reações de fissão e fusão nuclear. Desintegração radioativa e radioisótopos."),
                  pularLinha(),
                  funcaoText(
                      "• Dinâmica das Transformações Químicas - Transformações Químicas e velocidade. Velocidade de reação. Energia de ativação. Fatores que alteram a velocidade de reação: concentração, pressão, temperatura e catalisador."),
                  pularLinha(),
                  funcaoText(
                      "• Transformação Química e Equilíbrio - Caracterização do sistema em equilíbrio. Constante de equilíbrio. Produto iônico da água, equilíbrio ácido-base e pH. Solubilidade dos sais e hidrólise. Fatores que alteram o sistema em equilíbrio. Aplicação da velocidade e do equilíbrio químico no cotidiano."),
                  pularLinha(),
                  funcaoText(
                      "• Compostos de Carbono - Características gerais dos compostos orgânicos. Principais funções orgânicas. Estrutura e propriedades de Hidrocarbonetos. Estrutura e propriedades de compostos orgânicos oxigenados. Fermentação. Estrutura e propriedades de compostos orgânicos nitrogenados. Macromoléculas naturais e sintéticas. Noções básicas sobre polímeros. Amido, glicogênio e celulose. Borracha natural e sintética. Polietileno, poliestireno, PVC, Teflon, náilon. Óleos e gorduras, sabões e detergentes sintéticos. Proteínas e enzimas."),
                  pularLinha(),
                  funcaoText(
                      "• Relações da Química com as Tecnologias, a Sociedade e o Meio Ambiente - Química no cotidiano. Química na agricultura e na saúde. Química nos alimentos. Química e ambiente. Aspectos científico-tecnológicos, socioeconômicos e ambientais associados à obtenção ou produção de substâncias químicas. Indústria Química: obtenção e utilização do cloro, hidróxido de sódio, ácido sulfúrico, amônia e ácido nítrico. Mineração e Metalurgia. Poluição e tratamento de água. Poluição atmosférica. Contaminação e proteção do ambiente."),
                  pularLinha(),
                  funcaoText(
                      "• Energias Químicas no Cotidiano - Petróleo, gás natural e carvão. Madeira e hulha. Biomassa. Biocombustíveis. Impactos ambientais de combustíveis fosseis. Energia nuclear. Lixo atômico. Vantagens e desvantagens do uso de energia nuclear."),
                  pularLinha(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: Text(
                      "3.3 Biologia",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 40, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  funcaoText(
                      "• Moléculas, células e tecidos - Estrutura e fisiologia celular: membrana, citoplasma e núcleo. Divisão celular. Aspectos bioquímicos das estruturas celulares. Aspectos gerais do metabolismo celular. Metabolismo energético: fotossíntese e respiração. Codificação da informação genética. Síntese protéica. Diferenciação celular. Principais tecidos animais e vegetais. Origem e evolução das células. Noções sobre células-tronco, clonagem e tecnologia do DNA recombinante. Aplicações de biotecnologia na produção de alimentos, fármacos e componentes biológicos. Aplicações de tecnologias relacionadas ao DNA a investigações científicas, determinação da paternidade, investigação criminal e identificação de indivíduos. Aspectos éticos relacionados ao desenvolvimento biotecnológico. Biotecnologia e sustentabilidade."),
                  pularLinha(),
                  funcaoText(
                      "• Hereditariedade e diversidade da vida - Princípios básicos que regem a transmissão de características hereditárias. Concepções pré-mendelianas sobre a hereditariedade. Aspectos genéticos do funcionamento do corpo humano. Antígenos e anticorpos. Grupos sanguíneos, transplantes e doenças auto-imunes. Neoplasias e a influência de fatores ambientais. Mutações gênicas e cromossômicas. Aconselhamento genético. Fundamentos genéticos da evolução. Aspectos genéticos da formação e manutenção da diversidade biológica."),
                  pularLinha(),
                  funcaoText(
                      "• Identidade dos seres vivos - Níveis de organização dos seres vivos. Vírus, procariontes e eucariontes. Autótrofos e heterótrofos. Seres unicelulares e pluricelulares. Sistemática e as grandes linhas da evolução dos seres vivos. Tipos de ciclo de vida. Evolução e padrões anatômicos e fisiológicos observados nos seres vivos. Funções vitais dos seres vivos e sua relação com a adaptação desses organismos a diferentes ambientes. Embriologia, anatomia e fisiologia humana. Evolução humana. Biotecnologia e sistemática."),
                  pularLinha(),
                  funcaoText(
                      "• Ecologia e ciências ambientais - Ecossistemas. Fatores bióticos e abióticos. Habitat e nicho ecológico. A comunidade biológica: teia alimentar, sucessão e comunidade clímax. Dinâmica de populações. Interações entre os seres vivos. Ciclos biogeoquímicos. Fluxo de energia no ecossistema. Biogeografia. Biomas brasileiros. Exploração e uso de recursos naturais. Problemas ambientais: mudanças climáticas, efeito estufa; desmatamento; erosão; poluição da água, do solo e do ar. Conservação e recuperação de ecossistemas. Conservação da biodiversidade. Tecnologias ambientais. Noções de saneamento básico. Noções de legislação ambiental: água, florestas, unidades de conservação; biodiversidade."),
                  pularLinha(),
                  funcaoText(
                      "• Qualidade de vida das populações humanas - Aspectos biológicos da pobreza e do desenvolvimento humano. Indicadores sociais, ambientais e econômicos. Índice de desenvolvimento humano. Principais doenças que afetam a população brasileira: caracterização, prevenção e profilaxia. Noções de primeiros socorros. Doenças sexualmente transmissíveis. Aspectos sociais da biologia: uso indevido de drogas; gravidez na adolescência; obesidade. Violência e segurança pública. Exercícios físicos e vida saudável. Aspectos biológicos do desenvolvimento sustentável. Legislação e cidadania."),
                  pularLinha(),
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
