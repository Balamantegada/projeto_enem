import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      home: comparea2_page(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class comparea2_page extends StatelessWidget {
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
                                'Competência de área 2 - Conhecer e usar língua(s) estrangeira(s) moderna(s) como instrumento de acesso a informações e a outras culturas e grupos sociais*.',
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
                              "H5 – Dimensionar circuitos ou dispositivos elétricos de uso cotidiano.",
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
                              'H6 – Relacionar informações para compreender manuais de instalação ou utilização de aparelhos, ou sistemas tecnológicos de uso comum.',
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
                              "H7 – Selecionar testes de controle, parâmetros ou critérios para a comparação de materiais e produtos, tendo em vista a defesa do consumidor, a saúde do trabalhador ou a qualidade de vida",
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
