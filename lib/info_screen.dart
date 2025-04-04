import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Información de la Aplicación')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto de perfil
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage('https://i.imgur.com/KSTRMb7.jpeg'),
            ),
            const SizedBox(height: 20),

            // Título
            const Text(
              '♡ El Diario del Cazador ♡',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'serif',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),

            // Descripción general
            const Text(
              'El diario del cazador es una aplicación dedicada al universo de Bloodborne. Recopila información clave sobre jefes, NPCs, armas y locaciones del juego, junto con un breve extracto del lore y las conexiones entre los personajes y escenarios mencionados.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(height: 20),

            const Divider(color: Colors.white24),

            // Créditos e inspiración
            const SizedBox(height: 10),
            const Text(
              ' ∷∷ Inspiración ∷∷',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'serif',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Inspirado por el universo de Bloodborne desarrollado por FromSoftware y dirigido por Hidetaka Miyazaki.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),

            const SizedBox(height: 20),
            const Divider(color: Colors.white24),

            // Tecnologías usadas
            const SizedBox(height: 10),
            const Text(
              '∷∷ Tecnologías Utilizadas ∷∷',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'serif',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '- Flutter 3.x\n- Lenguaje Dart',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),

            const SizedBox(height: 20),
            const Divider(color: Colors.white24),

            // Información del desarrollador
            const SizedBox(height: 10),
            const Text(
              '∷∷ Contacto del que lo intentó ∷∷',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'serif',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Desarrollado por: Gabriely Sonatore\nEmail: gsonatore.0132@unimar.edu.ve\nGitHub: github.com/qabriely',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),

            const SizedBox(height: 20),
            const Divider(color: Colors.white24),

            // Modo de uso
            const SizedBox(height: 10),
            const Text(
              '∷∷ Modo de Uso ∷∷',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'serif',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Tocar una categoría en la pantalla principal para explorar su contenido. Usar el botón con ícono de información para regresar aquí en cualquier momento.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),

            const SizedBox(height: 20),
            const Divider(color: Colors.white24),

            // Versión
            const SizedBox(height: 10),
            const Text(
              'Versión: 1.0.0',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
