import 'package:flutter/material.dart';

// Información de los jefes
const List<Map<String, dynamic>> jefes = [
  {
    "nombre": "Bestia Clérigo (Opcional)",
    "ubicacion": "Yharnam Central",
    "descripcion":
        "Una monstruosidad de aspecto clerical, que vaga por las calles de Yharnam. Su presencia es una abominación de la fe corrompida.",
    "notas":
        "Una figura de lo que alguna vez fue, ahora un monstruo que refleja la corrupción de Yharnam. Imponente, pero nada menos que otro enemigo que debe caer.",
    "imagen": "https://i.imgur.com/wGOAQRq.jpeg",
  },
  {
    "nombre": "Padre Gascoigne",
    "ubicacion": "Yharnam Central",
    "descripcion":
        "Un cazador transformado en bestia debido a la plaga. Es el primer jefe y su batalla tiene una carga emocional significativa.",
    "notas":
        "Gascoigne era uno de nosotros, pero su caída muestra lo que podría ser mi destino. Su lucha es también contra la desesperación que nos consume a todos.",
    "imagen": "https://i.imgur.com/VFy22k4.jpeg",
  },
  {
    "nombre": "Bestia Sedienta de Sangre (Opcional)",
    "ubicacion": "Viejo Yharnam",
    "descripcion":
        "Una bestia masiva que acecha en el Bosque Prohibido, siempre buscando sangre. Sus ataques son devastadores.",
    "notas":
        "Su hambre no tiene fin. No es solo una bestia, sino una sombra de lo que alguna vez fue un cazador.",
    "imagen": "https://i.imgur.com/acYl0jK.jpeg",
  },
  {
    "nombre": "Vicaria Amelia",
    "ubicacion": "Distrito de la Catedral",
    "descripcion":
        "Una gigantesca figura religiosa corrompida por la sangre, que refleja el dolor de la fe perdida.",
    "notas":
        "Su dolor es palpable. Aún cuando luchamos, siento que la verdadera batalla está en lo que ella representa: la caída de los ideales.",
    "imagen": "https://i.imgur.com/tQEy9yL.jpeg",
  },
  {
    "nombre": "Sombra de Yharnam",
    "ubicacion": "Bosque Prohibido",
    "descripcion":
        "Un grupo de seres sombríos que protegen la entrada a Yahar'gul. Son un reflejo de cazadores perdidos.",
    "notas":
        "Son como espectros, vestigios de lo que perdimos. Cada uno es una advertencia de lo que puede suceder si no somos cuidadosos.",
    "imagen": "https://i.imgur.com/eXwiQji.jpeg",
  },
  {
    "nombre": "Rom, la Araña Vacua",
    "ubicacion": "Lago Moonside",
    "descripcion":
        "Una criatura cósmica que habita la Pesadilla de Mensis. Su aspecto alienígena y su poder son abrumadores.",
    "notas":
        "Una abominación de otro mundo. Su presencia me destruyó, como si todo lo que conocemos fuera irrelevante ante lo que está más allá.",
    "imagen": "https://i.imgur.com/rQqGHKz.jpeg",
  },
  {
    "nombre": "Amygdala (Opcional)",
    "ubicacion": "Frontera de la Pesadilla",
    "descripcion":
        "Una enorme criatura de tentáculos que reside en la Pesadilla de Mensis. Representa la locura pura, su caos es impredecible y aterrador.",
    "notas":
        "Es una manifestación de terror puro. Cada movimiento es un recordatorio de que no estamos preparados para lo que está más allá de nuestra comprensión.",
    "imagen": "https://i.imgur.com/r14QquY.jpeg",
  },
  {
    "nombre": "El Renacido",
    "ubicacion": "Yahar'gul",
    "descripcion":
        "Una criatura grotesca creada por la sangre. Se encuentra en la Pesadilla de Mensis.",
    "notas":
        "Es el resultado de un error fatal. Lo que alguna vez fue humano ahora no es más que una masa de dolor y desesperación.",
    "imagen": "https://i.imgur.com/c0KROek.jpeg",
  },
  {
    "nombre": "Micolash, Anfitrión de la Pesadilla",
    "ubicacion": "Yahar'gul [Pesadilla de Mensis]",
    "descripcion":
        "El líder de los Escolares de Mensis, que ha abandonado su humanidad y se ha entregado a los secretos de los Grandes.",
    "notas":
        "Micolash buscaba el poder absoluto, pero al final, la locura lo consume. Su risa resonaba mientras el abismo lo reclamaba.",
    "imagen": "https://i.imgur.com/AfSHBaE.jpeg",
  },
  {
    "nombre": "Ebrietas, Hija del Cosmos (Opcional)",
    "ubicacion": "Distrito de la Catedral Superior",
    "descripcion":
        "Una criatura cósmica ubicada en la Catedral de la Desesperación. Representa el caos y la abominación de los Grandes.",
    "notas":
        "Ebrietas es una manifestación del abismo. Su presencia en la catedral me hizo sentir que no debía estar allí, que estamos jugando con fuerzas que no entendemos.",
    "imagen": "https://i.imgur.com/osqeNT9.jpeg",
  },
  {
    "nombre": "Nodriza de Mergo",
    "ubicacion": "Pesadilla de Mensis",
    "descripcion":
        "Una entidad protectora de Mergo, el niño de la Pesadilla. Es una figura materna, pero también mortal.",
    "notas":
        "La Nodriza no es solo un enemigo, sino un guardián. Defiende lo que debe permanecer oculto, pero al enfrentarlo, sabemos que no podemos dejar que lo siga protegiendo.",
    "imagen": "https://i.imgur.com/nrPBQFD.jpeg",
  },
  {
    "nombre": "Gehrman, el Primer Cazador",
    "ubicacion": "Sueño del cazador",
    "descripcion":
        "El mentor de los cazadores, ahora corrompido por el mismo horror que una vez cazó. Representa el fin de una era.",
    "notas":
        "Gehrman fue mi mentor, pero ante mí ya no estaba el hombre que conocí. Solo quedaba el vacío de lo que alguna vez fue.",
    "imagen": "https://i.imgur.com/PZmPKhD.jpeg",
  },
  {
    "nombre": "Presencia Lunar (Final Específico)",
    "ubicacion": "Sueño del cazador",
    "descripcion":
        "El final de la Pesadilla, que revela la última verdad sobre el cazador y su destino.",
    "notas":
        "La Presencia Lunar es la conclusión de todo. No es solo el fin de la caza, es la aceptación de que nada volverá a ser lo mismo.",
    "imagen": "https://i.imgur.com/1nL0C8f.jpeg",
  },
];

class JefesScreen extends StatefulWidget {
  const JefesScreen({super.key});

  @override
  _JefesScreenState createState() => _JefesScreenState();
}

class _JefesScreenState extends State<JefesScreen> {
  int currentIndex = 0;

  void siguejefe() {
    setState(() {
      currentIndex = (currentIndex + 1) % jefes.length;
    });
  }

  void previojefe() {
    setState(() {
      currentIndex = (currentIndex - 1 + jefes.length) % jefes.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: const Text('Jefes')),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: NetworkImage(
              'https://i.imgur.com/your_background_image.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: screenHeight * 0.03),
                // Banda decorativa superior (Band1)
                Image.network(
                  'https://i.imgur.com/C2MgQlk.jpeg',
                  width: screenWidth * 0.75,
                  height: 40,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: screenHeight * 0.015),
                // Imagen del jefe
                SizedBox(
                  width: screenWidth * 0.7,
                  child: Image.network(
                    jefes[currentIndex]["imagen"],
                    fit: BoxFit.contain,
                  ),
                ),
                // Banda decorativa inferior (BAND2)
                SizedBox(height: screenHeight * 0.01),
                SizedBox(
                  width: screenWidth * 0.7,
                  height: 22,
                  child: Image.network(
                    'https://i.imgur.com/jkYcorF.jpeg',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: screenHeight * 0.08),
                // Nombre del jefe
                Text(
                  jefes[currentIndex]["nombre"],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenWidth * 0.0625,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: screenHeight * 0.015),
                // Ubicación
                Text(
                  jefes[currentIndex]["ubicacion"],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenWidth * 0.0375,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 226, 0, 0),
                  ),
                ),
                SizedBox(height: screenHeight * 0.015),
                // Descripcion
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Text(
                    jefes[currentIndex]["descripcion"],
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.0325,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5, // Limita el número de líneas
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                // Notas...
                Text(
                  "Notas...",
                  style: TextStyle(
                    fontSize: screenWidth * 0.0375,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 226, 0, 0),
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Text(
                    jefes[currentIndex]["notas"],
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.02875,
                      color: Colors.white70,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5, // Limita el número de líneas
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        //// Row para poner los botones flotantes en fila horizontal.
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: FloatingActionButton(
              // pasar al jefe previo
              onPressed: previojefe,
              child: const Icon(Icons.arrow_back),
              backgroundColor: const Color.fromARGB(108, 0, 0, 0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: FloatingActionButton(
              // pasar al sig jefe
              onPressed: siguejefe,
              child: const Icon(Icons.arrow_forward),
              backgroundColor: const Color.fromARGB(120, 0, 0, 0),
            ),
          ),
        ],
      ),
    );
  }
}
