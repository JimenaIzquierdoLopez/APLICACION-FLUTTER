
import 'package:flutter/material.dart';

void main() {
  runApp(const MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Paz y Tranquilidad',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF81D4FA),
        ),
        scaffoldBackgroundColor: const Color(0xFFE1F5FE),
      ),
      home: const PantallaInicio(),
    );
  }
}

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  void mostrarMensaje(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFFE1F5FE),
          icon: const Icon(
            Icons.volunteer_activism,
            color: Color(0xFF0288D1),
            size: 45,
          ),
          title: const Text(
            'Un mensaje de esperanza',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF01579B),
              fontWeight: FontWeight.bold,
            ),
          ),
          content: const Text(
            'Dios es la única salida y esperanza '
            'en este mundo.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF263238),
            ),
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF81D4FA),
        foregroundColor: const Color(0xFF01579B),
        centerTitle: true,
        title: const Text(
          'Paz y Tranquilidad',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.spa_rounded,
                size: 110,
                color: Color(0xFF0288D1),
              ),
              const SizedBox(height: 25),
              const Text(
                'Encuentra tu paz',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF01579B),
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                'Te ayudamos a que encuentres '
                'paz y tranquilidad.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  height: 1.5,
                  color: Color(0xFF37474F),
                ),
              ),
              const SizedBox(height: 35),
              ElevatedButton.icon(
                onPressed: () => mostrarMensaje(context),
                icon: const Icon(Icons.favorite),
                label: const Text('Encontrar esperanza'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0288D1),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 16,
                  ),
                  textStyle: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'Un momento de calma para tu corazón.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  color: Color(0xFF546E7A),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
