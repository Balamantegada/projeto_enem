//Código feito por arthur L. kroenke, MArcos Gabriel, Alisson, João e Guilherme, Sesi senai Itajai SC, 17/11/2022
import 'package:flutter/material.dart';

class pagina_sobre_mim extends StatefulWidget {
  const pagina_sobre_mim({super.key});

  @override
  State<pagina_sobre_mim> createState() => _pagina_sobre_mimState();
}

class _pagina_sobre_mimState extends State<pagina_sobre_mim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre nós"),
        backgroundColor: Color.fromARGB(255, 249, 178, 76),
      ),
      body: Center(
        child: Stack(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/backgroundLogin.png",
                  fit: BoxFit.cover,
                )),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 600,
                      maxWidth: 350,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(199, 36, 34, 29),
                              border: Border.all(
                                color: Color.fromARGB(199, 36, 34, 29),
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.videogame_asset,
                                  size: 50,
                                  color: Colors.white,
                                ),
                                Text(
                                  " Alisson Alves \n-\n Designer e assistente",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Image.asset("assets/images/sobremim/alisson.jpg"),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(199, 36, 34, 29),
                              border: Border.all(
                                color: Color.fromARGB(199, 36, 34, 29),
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.pets,
                                  size: 50,
                                  color: Colors.white,
                                ),
                                Padding(padding: EdgeInsets.all(20)),
                                Text(
                                  "Marcos Gabriel \n-\n Programador",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Image.asset("assets/images/sobremim/marcos.jpg"),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(199, 36, 34, 29),
                              border: Border.all(
                                color: Color.fromARGB(199, 36, 34, 29),
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.lightbulb_circle,
                                  size: 50,
                                  color: Colors.white,
                                ),
                                Padding(padding: EdgeInsets.all(20)),
                                Text(
                                  "Arthur Kroenke \n-\n Programador",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Image.asset("assets/images/sobremim/arthur.jpg"),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(199, 36, 34, 29),
                              border: Border.all(
                                color: Color.fromARGB(199, 36, 34, 29),
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.videogame_asset_off,
                                  size: 50,
                                  color: Colors.white,
                                ),
                                Padding(padding: EdgeInsets.all(20)),
                                Text(
                                  "Guilherme Paes \n-\n Programador",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Image.asset("assets/images/sobremim/guilherme.jpg"),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(199, 36, 34, 29),
                              border: Border.all(
                                color: Color.fromARGB(199, 36, 34, 29),
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.soap,
                                  size: 50,
                                  color: Colors.white,
                                ),
                                Padding(padding: EdgeInsets.all(20)),
                                Text(
                                  "João Pedro \n-\n Programador",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Image.asset("assets/images/sobremim/joão.jpg"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
