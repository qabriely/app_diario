import 'package:flutter/material.dart';

// Información de las armas
const List<Map<String, dynamic>> armas = [
  {
    "nombre": "Sierra Cuchilla",
    "descripcion":
        "La Sierra Cuchilla es el arma más representativa de la cacería, una herramienta diseñada para destrozar la carne de las bestias con su filo dentado. Su mecanismo plegable le permite alternar entre ataques veloces y cortes amplios, adaptándose a cualquier encuentro. Aunque sencilla en apariencia, su efectividad la ha convertido en la favorita de muchos cazadores.",
    "notas":
        "Un arma confiable, elegida por los primeros cazadores de la Iglesia de la Sanación. Su filo desgarrador deja cicatrices profundas en la carne de las bestias.",
    "imagen": "https://i.imgur.com/y585kkA.jpeg",
  },
  {
    "nombre": "Espada Santa de Ludwig",
    "descripcion":
        "La Espada Santa de Ludwig es un símbolo de la fe de la Iglesia de la Sanación, una hoja que brilla con un poder olvidado. En su forma original es ágil y precisa, pero al desenvainarse de su vaina, revela su verdadero poder como una gran espada capaz de desgarrar tanto a bestias como a hombres.",
    "notas":
        "Un arma sagrada empuñada por Ludwig, el primer cazador de la Iglesia. Su filo resuena con ecos de la caza eterna.",
    "imagen": "https://i.imgur.com/zXHuxw1.jpeg",
  },
  {
    "nombre": "Hacha de Cazador",
    "descripcion":
        "El Hacha de Cazador es una opción fiable para aquellos que buscan poder y versatilidad. Su filo corto permite ataques rápidos, pero al extenderse se convierte en un arma pesada capaz de derribar múltiples enemigos con un solo golpe. Es una herramienta brutal, ideal para quienes priorizan la fuerza sobre la destreza.",
    "notas":
        "Una herramienta confiable de la cacería, su peso es una bendición para quienes buscan acabar con las bestias de un solo tajo.",
    "imagen": "https://i.imgur.com/B8GZnOa.jpeg",
  },
  {
    "nombre": "Cuchilla Dentada",
    "descripcion":
        "La Cuchilla Dentada es una variante más liviana de la Sierra Cuchilla, con un diseño optimizado para cortes rápidos. Su capacidad de extenderse y retraerse con facilidad la hace letal en combate cerrado, donde cada movimiento puede significar la diferencia entre la vida y la muerte.",
    "notas":
        "Aunque menos común que su contraparte, esta cuchilla sigue siendo una de las favoritas entre los cazadores más versados.",
    "imagen": "https://i.imgur.com/cYf5IsK.jpeg",
  },
  {
    "nombre": "Hoja Enterrada",
    "descripcion":
        "La Hoja Enterrada es un arma diseñada para la elegancia y la muerte. Forjada en un tiempo remoto, su filo se divide en dos para crear una guadaña de largo alcance, permitiendo ataques rápidos y fluidos. Su diseño es único, reflejando la maestría de su primer portador, el primer cazador.",
    "notas":
        "Una reliquia de la primera cacería. Sus filos cortan no solo la carne, sino también los lazos con este mundo.",
    "imagen": "https://i.imgur.com/jtjqp9h.jpeg",
  },
  {
    "nombre": "Logarius' Wheel",
    "descripcion":
        "Es una reliquia de los Sangrevil, una rueda de ejecución imbuida con un poder macabro. En combate, su portador la puede hacer girar, despertando el rencor de los espectros que la habitan y aumentando su poder destructivo. Es un arma brutal, usada para castigar a los herejes con una justicia despiadada.",
    "notas":
        "Un símbolo del juicio inquebrantable de Logarius. Quienes la empuñan cargan con la ira de los mártires de Cainhurst.",
    "imagen": "https://i.imgur.com/yOPQ6I9.jpeg",
  },
];

class ArmasScreen extends StatefulWidget {
  const ArmasScreen({super.key});

  @override
  _ArmasScreenState createState() => _ArmasScreenState();
}

class _ArmasScreenState extends State<ArmasScreen> {
  int currentIndex = 0;

  void sigArma() {
    setState(() {
      currentIndex = (currentIndex + 1) % armas.length;
    });
  }

  void prevArma() {
    setState(() {
      currentIndex = (currentIndex - 1 + armas.length) % armas.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: const Text('Armas')),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: NetworkImage(
              'https://i.imgur.com/your_background_image.jpg', // Cambia esto por la URL de tu imagen de fondo
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
                  'https://i.imgur.com/C2MgQlk.jpeg', // Cambia esto por la URL de tu imagen de encabezado
                  width: screenWidth * 0.75,
                  height: 40,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: screenHeight * 0.015),
                SizedBox(
                  width: screenWidth * 0.7,
                  child: Image.network(
                    armas[currentIndex]["imagen"],
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Icon(Icons.broken_image, color: Colors.red),
                      );
                    },
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                SizedBox(
                  width: screenWidth * 0.7,
                  height: 22,
                  child: Image.network(
                    'https://i.imgur.com/jkYcorF.jpeg', // Cambia esto por la URL de tu imagen decorativa
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: screenHeight * 0.08),
                Text(
                  armas[currentIndex]["nombre"],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenWidth * 0.075,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: screenHeight * 0.015),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Text(
                    armas[currentIndex]["descripcion"],
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
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Text(
                    armas[currentIndex]["notas"],
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
              onPressed: prevArma,
              child: const Icon(Icons.arrow_back),
              backgroundColor: const Color.fromARGB(108, 0, 0, 0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: FloatingActionButton(
              onPressed: sigArma,
              child: const Icon(Icons.arrow_forward),
              backgroundColor: const Color.fromARGB(120, 0, 0, 0),
            ),
          ),
        ],
      ),
    );
  }
}
