import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      home: comparea3_page(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class comparea3_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthcontaneir = MediaQuery.of(context).size.width * .8;
    double heightcontaneir = MediaQuery.of(context).size.height * .8;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Matriz de Referência de Ciências da Natureza e suas Tecnologias",
          style: TextStyle(),
        ),
        shadowColor: Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 72, 61, 139),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            ),
            Center(
              child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: widthcontaneir,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(6, 6, 6, 6),
                            child: Text(
                                'Competência de área 3 - Compreender e usar a linguagem corporal como relevante para a própria vida, integradora social e formadora da identidade.',
                                style: TextStyle(fontSize: 25)),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 164, 99),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 40, 0, 30),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: Text(
                              "H8 – Identificar etapas em processos de obtenção, transformação, utilização ou reciclagem de recursos naturais, energéticos ou matérias-primas, considerando processos biológicos, químicos ou físicos neles envolvidos.",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(68, 222, 115, 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: Text(
                              'H9 – Compreender a importância dos ciclos biogeoquímicos ou do fluxo energia para a vida, ou da ação de agentes ou fenômenos que podem causar alterações nesses processos.',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(68, 222, 115, 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: Text(
                              "H10 – Analisar perturbações ambientais, identificando fontes, transporte e(ou) destino dos poluentes ou prevendo efeitos em sistemas naturais, produtivos ou sociais. ",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(68, 222, 115, 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: Text(
                              "H11 – Reconhecer benefícios, limitações e aspectos éticos da biotecnologia, considerando estruturas e processos biológicos envolvidos em produtos biotecnológicos",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(68, 222, 115, 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: Text(
                              "H12 – Avaliar impactos em ambientes naturais decorrentes de atividades sociais ou econômicas, considerando interesses contraditórios.",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(68, 222, 115, 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                          ),
                        ]),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(90, 255, 164, 99),
                      border: Border.all(
                          color: Color.fromARGB(235, 242, 79, 0), width: 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
