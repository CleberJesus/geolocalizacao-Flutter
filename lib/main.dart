import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  double? latitude;
  double? longitude;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            latitude != null
                ? Text(
                    'Latidude: $latitude',
                    textAlign: TextAlign.center,
                  )
                : const Text(
                    'Latitude: ',
                    textAlign: TextAlign.center,
                  ),
            longitude != null
                ? Text(
                    'Longitude: $longitude',
                    textAlign: TextAlign.center,
                  )
                : const Text(
                    'Longitude: ',
                    textAlign: TextAlign.center,
                  ),
            TextButton(
              child: const Text(
                'Pegar Posição',
                textAlign: TextAlign.center,
              ),
              onPressed: () {
                pegarPosicao();
              },
            ),
          ],
        ),
      ),
    );
  }

  pegarPosicao() async {
    Position posicao = await Geolocator.getCurrentPosition();
    setState(() {
      latitude = posicao.latitude;
      longitude = posicao.longitude;
    });
  }
}
