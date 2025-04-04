import 'package:flutter/material.dart';

// Información de las locaciones
const List<Map<String, dynamic>> locaciones = [
  {
    "nombre": "Yharnam Central",
    "descripcion":
        "La ciudad principal y punto de inicio del viaje. Yharnam es un lugar gótico con calles laberínticas, plagadas de ciudadanos transformados en bestias debido a la plaga de la Sangre Antigua. Es el centro de la Iglesia de la Sanación y el escenario de los primeros horrores que un cazador enfrenta.",
    "notas":
        "Las calles están en ruinas, pero no desiertas. A cada paso, sombras se mueven entre los escombros y ojos enrojecidos me vigilan desde la penumbra. No es solo una ciudad condenada, es un laberinto de muerte y desesperación.",
    "subLocaciones": [
      {
        "nombre": "Gran Puente",
        "descripcion":
            "La estructura imponente que conecta partes de la ciudad. Es un campo de batalla, y el rugido de la Bestia Clérigo aún resuena en mi cabeza.",
      },
      {
        "nombre": "Viejo Yharnam",
        "descripcion":
            "Más allá de la torre, la ciudad cambia. Es un cementerio de fuego y cenizas, donde los que fueron dejados atrás siguen luchando contra su destino.",
      },
    ],
    "imagen": "https://i.imgur.com/gokBMbs.jpeg",
  },
  {
    "nombre": "Sueño del Cazador",
    "descripcion":
        "Una dimensión fuera de la realidad, un refugio para los cazadores. Es un jardín silencioso, con una cabaña que contiene herramientas y conocimientos sobre la cacería. Aquí, los cazadores pueden mejorar sus habilidades y regresar tras la muerte.",
    "notas":
        "Cada vez que despierto aquí, me pregunto si estoy más cerca de la verdad o simplemente hundiéndome más en la pesadilla. La muñeca me habla con dulzura, pero sus ojos vacíos no me reconfortan. ¿Es esto un santuario o una jaula?",
    "subLocaciones": [],
    "imagen": "https://i.imgur.com/6OUdL5O.jpeg",
  },
  {
    "nombre": "Distrito de la Catedral",
    "descripcion":
        "El área religiosa de Yharnam, donde la Iglesia de la Sanación reside. Es un lugar más elegante que el centro de la ciudad, pero igualmente corrupto. Alberga a enemigos más resistentes y mutaciones avanzadas de la plaga.",
    "notas":
        "Las grandes puertas de la catedral se alzan ante mí, como si escondieran algo que no debe ser descubierto. No es solo una iglesia… es un laboratorio, una prisión, y quizás algo peor.",
    "subLocaciones": [
      {
        "nombre": "Distrito de la Catedral Superior",
        "descripcion":
            "La verdadera jerarquía de la iglesia se oculta aquí. Criaturas deformes merodean, como guardianes de un secreto que no quieren que vea.",
      },
      {
        "nombre": "Byrgenwerth",
        "descripcion":
            "No está cerca, pero todo en la catedral apunta hacia ese nombre. Aquí comenzó todo, y aquí intentaron ocultarlo.",
      },
    ],
    "imagen": "https://i.imgur.com/WQwxHCB.jpeg",
  },
  {
    "nombre": "Paso del Osario de Hemwick",
    "descripcion":
        "Un campo de tumbas y ruinas fuera de Yharnam. Es hogar de las Brujas de Hemwick, mujeres ancianas y dementes que realizan rituales macabros.",
    "notas":
        "Aquí no hay rastros de la Iglesia ni de la plaga. Solo muerte y un hambre enfermiza por ojos. No quiero saber qué hacen con ellos.",
    "subLocaciones": [],
    "imagen": "https://i.imgur.com/2MwrLkS.jpeg",
  },
  {
    "nombre": "Byrgenwerth",
    "descripcion":
        "Una antigua institución académica donde se investigaban los secretos de la Sangre Antigua y los Grandes. Ahora está casi abandonada, pero su conocimiento sigue latente.",
    "notas":
        "Aquí fue donde todo comenzó. Aquí fue donde alguien miró más allá de la humanidad y encontró algo que no debía tocar. En el lago hay algo… algo que no debería existir, pero que aún respira.",
    "subLocaciones": [
      {
        "nombre": "Lago Moonside",
        "descripcion":
            "Rom. No puedo describirlo, pero sé que verlo ha cambiado algo en mí. Siento que el mundo es distinto ahora.",
      },
    ],
    "imagen": "https://i.imgur.com/PqkPxEP.jpeg",
  },
  {
    "nombre": "Castillo Olvidado de Cainhurst",
    "descripcion":
        "Un castillo gótico oculto en la nieve, hogar de la nobleza de Yharnam. Está en ruinas, pero su legado sigue vivo a través de la Reina Annalise y los Cazadores de la Sangre Vil.",
    "notas":
        "La sangre aquí es distinta, más refinada, más letal. No es la catedral ni la plaga lo que destruyó este lugar… fue algo más antiguo, algo más personal.",
    "subLocaciones": [],
    "imagen": "https://i.imgur.com/LWR1U4b.jpeg",
  },
  {
    "nombre": "Cárcel Hipogea",
    "descripcion":
        "Una prisión subterránea oculta dentro de Yahar'gul. Es un lugar de experimentación y sacrificios.",
    "notas":
        "Me desperté aquí sin saber cómo. Las celdas están vacías, pero las paredes susurran. No soy el primero en estar aquí… pero quizás sí el último.",
    "subLocaciones": [],
    "imagen": "https://i.imgur.com/MyLRRuM.jpeg",
  },
  {
    "nombre": "Altar de la Desesperación",
    "descripcion":
        "Un lugar oculto en lo más profundo de la Catedral. Un sitio de luto y muerte donde yace Ebrietas, Hija del Cosmos.",
    "notas":
        "No sé si lo que está frente a mí es un dios, una bestia o un error. No llora, pero siento su desesperación. ¿Qué encontró aquí la Iglesia de la Sanación… y por qué quisieron ocultarlo?",
    "subLocaciones": [],
    "imagen": "https://i.imgur.com/FjjaRiM.jpeg",
  },
];

class LocacionesScreen extends StatefulWidget {
  const LocacionesScreen({super.key});

  @override
  _LocacionesScreenState createState() => _LocacionesScreenState();
}

class _LocacionesScreenState extends State<LocacionesScreen> {
  int currentIndex = 0;

  void sigLocation() {
    setState(() {
      currentIndex = (currentIndex + 1) % locaciones.length;
    });
  }

  void prevLocation() {
    setState(() {
      currentIndex = (currentIndex - 1 + locaciones.length) % locaciones.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: const Text('Locaciones')),
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
                Image.network(
                  'https://i.imgur.com/C2MgQlk.jpeg',
                  width: screenWidth * 0.75,
                  height: 40,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: screenHeight * 0.015),
                SizedBox(
                  width: screenWidth * 0.7,
                  child: Image.network(
                    locaciones[currentIndex]["imagen"],
                    fit: BoxFit.contain,
                  ),
                ),
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
                Text(
                  locaciones[currentIndex]["nombre"],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenWidth * 0.075,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: screenHeight * 0.015),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                  child: Text(
                    locaciones[currentIndex]["descripcion"],
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5, // Limita el número de líneas
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Text(
                  "Notas...",
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 226, 0, 0),
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                  child: Text(
                    locaciones[currentIndex]["notas"],
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: screenWidth * 0.035,
                      color: Colors.white70,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5, // Limita el número de líneas
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                for (var subLoc in locaciones[currentIndex]["subLocaciones"])
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.1,
                      vertical: screenHeight * 0.01,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "• ${subLoc["nombre"]}",
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 226, 0, 0),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.005),
                        Text(
                          subLoc["descripcion"],
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: screenWidth * 0.035,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: screenHeight * 0.04),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: FloatingActionButton(
              onPressed: prevLocation,
              child: const Icon(Icons.arrow_back),
              backgroundColor: const Color.fromARGB(108, 0, 0, 0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: FloatingActionButton(
              onPressed: sigLocation,
              child: const Icon(Icons.arrow_forward),
              backgroundColor: const Color.fromARGB(120, 0, 0, 0),
            ),
          ),
        ],
      ),
    );
  }
}
