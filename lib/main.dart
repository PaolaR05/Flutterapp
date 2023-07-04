
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  double contador = 10.0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hola mundo',
      home: Scaffold(
        appBar: AppBar(
          // centerTitle: false,
          backgroundColor: Colors.purple[200],
          title: const Text('Operaciones Basicas'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Resultado:',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.purple[800],
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'valor de contador: $contador',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue[600],
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
            floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.teal[700],
              onPressed: dividir, 
              child: const Text(" / "),
            ),
            const SizedBox(width: 16),
            FloatingActionButton(
              backgroundColor: Colors.pink[200],
              onPressed: multiplicar, 
              child: const Icon(Icons.clear),
            ),
          FloatingActionButton(
              backgroundColor: Colors.blue[200],
              onPressed: restarprueba, 
              child: const Text('-'),
            ),
            const SizedBox(width: 16),
            FloatingActionButton(
              backgroundColor: Colors.yellow[300],
              onPressed: incrementar, 
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }

  void incrementar() {
    setState(() {});
    contador=contador +2;
  }
  void restarprueba() {
    setState(() {});
    contador= contador - 2;
  }
    void dividir() {
    setState(() {});
    contador= contador * 0.5;
  }
  void multiplicar() {
    setState(() {});
    contador= contador * 2;
  }
}