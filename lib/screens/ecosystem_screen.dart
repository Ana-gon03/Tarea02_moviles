import 'package:flutter/material.dart';
import '../models/ecosystem.dart';
import '../widgets/app_header_widget.dart';
import '../widgets/ecosystem_card_widget.dart';
import 'habitat_screen.dart';

class EcosystemScreen extends StatelessWidget {
  final List<Ecosystem> ecosystems = [
    Ecosystem(
      name: 'Selva',
      description: 'Ecosistema tropical húmedo con gran biodiversidad y vegetación exuberante.',
      imagePath: 'assets/selva.jpg',
      speciesCount: '3M',
      humidity: '80-98%',
      temperature: '25-30°C',
    ),

    Ecosystem(
      name: 'Desierto',
      description: 'Extensas áreas áridas con temperaturas extremas y escasa vegetación.',
      imagePath: 'assets/desierto.jpg',
      speciesCount: '500K',
      humidity: '10-25%',
      temperature: '10-45°C',
    ),

    Ecosystem(
      name: 'Océano',
      description: 'Misterioso mundo submarino lleno de vida, desde la superficie hasta las profundidades.',
      imagePath: 'assets/oceano.jpg',
      speciesCount: '2.2M',
      humidity: 'N/A',
      temperature: '2-25°C',
    ),

    Ecosystem(
      name: 'Sabana',
      description: 'Llanuras tropicales con estaciones secas y húmedas, hogar de grandes mamíferos.',
      imagePath: 'assets/sabana.jpg',
      speciesCount: '1M',
      humidity: '30-60%',
      temperature: '20-30°C',
    ),

    Ecosystem(
      name: 'Bosque templado',
      description: 'Bosques con estaciones bien definidas, ricos en árboles de hoja caduca y fauna diversa.',
      imagePath: 'assets/bosque_templado.jpg',
      speciesCount: '600K',
      humidity: '50-80%',
      temperature: '0-20°C',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF0F2027), // Azul muy oscuro
              Color(0xFF203A43), // Azul oscuro
              Color(0xFF2C5364), // Azul medio
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header reutilizable
            const MainAppHeaderWidget(),

            // Lista de ecosistemas
            Expanded(
              child: ListView.builder(
                itemCount: ecosystems.length,
                itemBuilder: (context, index) {
                  final ecosystem = ecosystems[index];
                  return EcosystemCardWidget(
                    ecosystem: ecosystem,
                    onTap: () {
                      // Navegación con PageRouteBuilder para la transición personalizada
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: const Duration(milliseconds: 600),
                          pageBuilder: (context, animation, secondaryAnimation) =>
                              HabitatScreen(ecosystem: ecosystem),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            // Animación de opacidad y escala
                            var tween = Tween<double>(begin: 0.0, end: 1.0).chain(
                              CurveTween(curve: Curves.easeIn),
                            );
                            return FadeTransition(
                              opacity: animation.drive(tween),
                              child: ScaleTransition(
                                scale: animation.drive(tween),
                                child: child,
                              ),
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}