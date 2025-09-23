import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/animal.dart';
import '../widgets/animal_card_widget.dart';
import '../widgets/animal_modal_widget.dart';

class AnimalScreen extends StatelessWidget {
  final List<Animal> animals;

  AnimalScreen({required this.animals});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(
          'Animales en el Hábitat',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
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
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Animales que viven aquí',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: ListView.builder(
                    itemCount: animals.length,
                    itemBuilder: (context, index) {
                      final animal = animals[index];
                      return AnimalCardWidget(
                        animal: animal,
                        onTap: () => _showAnimalModal(context, animal),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showAnimalModal(BuildContext context, Animal animal) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AnimalModalWidget(animal: animal);
      },
    );
  }
}