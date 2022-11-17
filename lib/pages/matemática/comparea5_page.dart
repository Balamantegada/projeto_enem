import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      home: comparea5_page(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class comparea5_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthcontaneir = MediaQuery.of(context).size.width * .8;
    double heightcontaneir = MediaQuery.of(context).size.height * .8;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Competâncias de Matematica",
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
                                'Competência de área 5 - Modelar e resolver problemas que envolvem variáveis socioeconômicas ou técnico-científicas, usando representações algébricas.',
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
                              "H19 - Identificar representações algébricas que expressem a relação entre grandezas.",
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
                              "H20 - Interpretar gráfico cartesiano que represente relações entre grandezas.",
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
                              "H21 - Resolver situação-problema cuja modelagem envolva conhecimentos algébricos.",
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
                              "H22 - Utilizar conhecimentos algébricos/geométricos como recurso para a construção de argumentação.",
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
                              "H23 - Avaliar propostas de intervenção na realidade utilizando conhecimentos algébricos.",
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
