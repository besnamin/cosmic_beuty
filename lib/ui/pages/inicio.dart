import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   void _signin() {
    setState(() {
      Navigator.pop(context);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: const Text(
          'Cosmic Beauty',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(""),
          
        
        Card(
        child: Row(
              children: [
                Image.network('https://cdn-icons-png.flaticon.com/512/3241/3241840.png', width: 300,height: 150, fit:BoxFit.fill),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Bienvenido Usuario",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ],
            ),
        ),
        Image.network('https://thumbs.dreamstime.com/z/maquillaje-pasos-simples-c%C3%B3mo-aplicar-f%C3%A1cil-bandera-de-la-informaci%C3%B3n-para-el-cat%C3%A1logo-o-publicidad-98940239.jpg',  width: 300,height: 400, fit:BoxFit.fill  ),
        const Text(""),
         Center(
            child: MaterialButton(
              child: const Text('Cerrar Sesion'),
              color: Colors.pinkAccent,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ), 
    );
  }
}

