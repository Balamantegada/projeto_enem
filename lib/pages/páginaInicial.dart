//Código feito pro arthur L. kroenke, Sesi senai Itajai SC, 08/11/2022
import 'dart:ffi';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:projeto_enem/pages/p%C3%A1ginaSobreMim.dart';

double porcentagemHumanas = 99;
double porcentagemCiencias = 13;
double porcentagemLinguagens = 54;
double porcentagemMatematica = 32;

enum LegendShape { circle, rectangle }

class pagina_inicial extends StatefulWidget {
  const pagina_inicial({super.key});

  @override
  State<pagina_inicial> createState() => _pagina_inicialState();
}

class _pagina_inicialState extends State<pagina_inicial> {
  ChartType? _chartType = ChartType.ring;
  bool _showCenterText = true;
  double? _ringStrokeWidth = 32;
  double? _chartLegendSpacing = 32;

  bool _showLegendsInRow = false;
  bool _showLegends = false;
  bool _showLegendLabel = false;

  bool _showChartValueBackground = false;
  bool _showChartValues = false;
  bool _showChartValuesInPercentage = false;
  bool _showChartValuesOutside = false;

  bool _showGradientColors = false;

  LegendShape? _legendShape = LegendShape.circle;
  LegendPosition? _legendPosition = LegendPosition.right;

  int key = 0;
  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.black87,
      primary: Colors.grey[200],
      padding: EdgeInsets.all(15),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );
    final dataMapCiencias = <String, double>{
      "yes": porcentagemCiencias,
      "not": 100 - porcentagemCiencias,
    };
    final dataMapHumanas = <String, double>{
      "yes": porcentagemHumanas,
      "not": 100 - porcentagemHumanas,
    };
    final dataMapMatematica = <String, double>{
      "yes": porcentagemMatematica,
      "not": 100 - porcentagemMatematica,
    };
    final dataMapLinguagens = <String, double>{
      "yes": porcentagemLinguagens,
      "not": 100 - porcentagemLinguagens,
    };

    final colorList = <Color>[
      Color.fromARGB(255, 249, 177, 76),
      Color.fromARGB(129, 46, 192, 185)
    ];
    /////////////////
    final graficoTortaMatematica = PieChart(
      key: ValueKey(key),
      dataMap: dataMapMatematica,
      animationDuration: const Duration(milliseconds: 800),
      chartLegendSpacing: _chartLegendSpacing!,
      chartRadius: math.min(MediaQuery.of(context).size.width / 3.2, 300),
      colorList: colorList,
      initialAngleInDegree: 0,
      chartType: _chartType!,
      centerText: _showCenterText
          ? "Matemática" + "\n" + porcentagemMatematica.toString() + "%"
          : null,
      legendOptions: LegendOptions(
        showLegendsInRow: _showLegendsInRow,
        legendPosition: _legendPosition!,
        showLegends: _showLegends,
        legendShape: _legendShape == LegendShape.circle
            ? BoxShape.circle
            : BoxShape.rectangle,
        legendTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: _showChartValueBackground,
        showChartValues: _showChartValues,
        showChartValuesInPercentage: _showChartValuesInPercentage,
        showChartValuesOutside: _showChartValuesOutside,
      ),
      ringStrokeWidth: _ringStrokeWidth!,
      emptyColor: Color.fromARGB(255, 253, 0, 0),
      emptyColorGradient: const [
        Color.fromARGB(255, 72, 61, 139),
        Color.fromARGB(255, 72, 61, 139),
      ],
      baseChartColor: Colors.transparent,
    );
////////////////////////////////////
    final graficoTortaHumanas = PieChart(
      dataMap: dataMapHumanas,
      key: ValueKey(key),
      animationDuration: const Duration(milliseconds: 800),
      chartRadius: math.min(MediaQuery.of(context).size.width / 3.2, 300),
      colorList: colorList,
      chartType: _chartType!,
      centerText: _showCenterText
          ? "Humanas" + "\n" + porcentagemHumanas.toString() + "%"
          : null,
      legendOptions: LegendOptions(
        showLegendsInRow: _showLegendsInRow,
        legendPosition: _legendPosition!,
        showLegends: _showLegends,
        legendShape: _legendShape == LegendShape.circle
            ? BoxShape.circle
            : BoxShape.rectangle,
        legendTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: _showChartValueBackground,
        showChartValues: _showChartValues,
        showChartValuesInPercentage: _showChartValuesInPercentage,
        showChartValuesOutside: _showChartValuesOutside,
      ),
      ringStrokeWidth: _ringStrokeWidth!,
    );
    final graficoTortaCiencia = PieChart(
      dataMap: dataMapCiencias,
      key: ValueKey(key),
      animationDuration: const Duration(milliseconds: 800),
      chartRadius: math.min(MediaQuery.of(context).size.width / 3.2, 300),
      colorList: colorList,
      chartType: _chartType!,
      centerText: _showCenterText
          ? "Ciência da \nnatureza" +
              "\n" +
              porcentagemCiencias.toString() +
              "%"
          : null,
      legendOptions: LegendOptions(
        showLegendsInRow: _showLegendsInRow,
        legendPosition: _legendPosition!,
        showLegends: _showLegends,
        legendShape: _legendShape == LegendShape.circle
            ? BoxShape.circle
            : BoxShape.rectangle,
        legendTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: _showChartValueBackground,
        showChartValues: _showChartValues,
        showChartValuesInPercentage: _showChartValuesInPercentage,
        showChartValuesOutside: _showChartValuesOutside,
      ),
      ringStrokeWidth: _ringStrokeWidth!,
    );
    final graficoTortaLinguagens = PieChart(
      dataMap: dataMapLinguagens,
      key: ValueKey(key),
      animationDuration: const Duration(milliseconds: 800),
      chartRadius: math.min(MediaQuery.of(context).size.width / 3.2, 300),
      colorList: colorList,
      chartType: _chartType!,
      centerText: _showCenterText
          ? "Linguagens" + "\n" + porcentagemLinguagens.toString() + "%"
          : null,
      legendOptions: LegendOptions(
        showLegendsInRow: _showLegendsInRow,
        legendPosition: _legendPosition!,
        showLegends: _showLegends,
        legendShape: _legendShape == LegendShape.circle
            ? BoxShape.circle
            : BoxShape.rectangle,
        legendTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: _showChartValueBackground,
        showChartValues: _showChartValues,
        showChartValuesInPercentage: _showChartValuesInPercentage,
        showChartValuesOutside: _showChartValuesOutside,
      ),
      ringStrokeWidth: _ringStrokeWidth!,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pagina Inicial",
          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        shadowColor: const Color.fromARGB(255, 32, 178, 170),
        elevation: 15,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 72, 61, 139),
      ),
      body: Center(
        child: Stack(children: <Widget>[
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/backgroundIncial.png",
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              0,
              25,
              0,
              0,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 230, 0),
                  child: const Text(
                    "Nome do Aluno",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 32, 178, 170)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 210, 0),
                  child: const Text(
                    "Pontuação 150xp",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 32, 178, 170)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 190, 0),
                  child: const Text(
                    "Ranking Escola 150",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 32, 178, 170)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 200, 0),
                  child: const Text(
                    "Ranking Geral 550",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 32, 178, 170)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: ElevatedButton(
                            onPressed: () => {},
                            style: raisedButtonStyle,
                            child: graficoTortaMatematica),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: ElevatedButton(
                            onPressed: () => {},
                            style: raisedButtonStyle,
                            child: graficoTortaHumanas),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                      child: Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: ElevatedButton(
                            onPressed: () => {},
                            style: raisedButtonStyle,
                            child: graficoTortaCiencia),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                      child: Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: ElevatedButton(
                            onPressed: () => {},
                            style: raisedButtonStyle,
                            child: graficoTortaLinguagens),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 450, 0, 0),
                child: TextButton(
                    child: Text(
                      "Objetos de Conhecimento",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        color: Color.fromARGB(255, 32, 178, 170),
                      ),
                    ),
                    onPressed: () {}),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(150, 530, 0, 0),
                child: TextButton(
                    child: Text(
                      "Sobre Nós",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 32, 178, 170),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => pagina_sobre_mim()),
                      );
                    }),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
