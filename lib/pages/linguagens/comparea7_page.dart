import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      home: comparea7_page(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class comparea7_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthcontaneir = MediaQuery.of(context).size.width * .8;
    double heightcontaneir = MediaQuery.of(context).size.height * .8;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Matriz de Referência de Linguagens, Códigos e suas Tecnologias",
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
                                'Competência de área 7 - Confrontar opiniões e pontos de vista sobre as diferentes linguagens e suas manifestações específicas.',
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
                              "H21 - Reconhecer em textos de diferentes gêneros, recursos verbais e não-verbais utilizados com a finalidade de criar e mudar comportamentos e hábitos.",
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
                              "H22 - Relacionar, em diferentes textos, opiniões, temas, assuntos e recursos linguísticos.",
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
                              "H23 - Inferir em um texto quais são os objetivos de seu produtor e quem é seu público alvo, pela análise dos procedimentos argumentativos utilizados.",
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
                              "H24 - Reconhecer no texto estratégias argumentativas empregadas para o convencimento do público, tais como a intimidação, sedução, comoção, chantagem, entre outras.",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(68, 222, 115, 1),
                              borderRadius: BorderRadius.circular(4),
                            ),
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
