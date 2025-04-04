import 'package:flutter/material.dart';

class PersonajesScreen extends StatefulWidget {
  const PersonajesScreen({super.key});

  @override
  _PersonajesScreenState createState() => _PersonajesScreenState();
}

class _PersonajesScreenState extends State<PersonajesScreen> {
  final List<Map<String, String>> personajes = [
    {
      'nombre': 'Ministro de Sangre',
      'imagen': 'https://i.imgur.com/BREawiC.jpeg',
      'descripcion':
          'Figura enigmática asociada con la Iglesia de la Sanación, el Ministro de Sangre es responsable de administrar la sangre curativa a los habitantes de Yharnam. Su papel en la propagación de la plaga de las bestias es incierto, pero su presencia sugiere un conocimiento profundo de los efectos de la sangre antigua.',
      'notas':
          '¿Es un salvador o un verdugo? Nos dieron la sangre como una bendición, pero en su sombra se oculta la maldición de la bestia. Me pregunto si alguna vez dudó de lo que hacía... o si ya no es capaz de dudar.',
    },
    {
      'nombre': 'Iosefka',
      'imagen': 'https://i.imgur.com/6nzpEfA.jpeg',
      'descripcion':
          'Doctora residente en la Clínica de Iosefka, ofrece refugio a los desafortunados que buscan ayuda en la noche de la caza. Sin embargo, en algún punto es reemplazada por una impostora, cuyo verdadero propósito es realizar experimentos en los sobrevivientes.',
      'notas':
          'Al principio, su voz era un bálsamo en la oscuridad. Pero ahora su tono ha cambiado. Ya no ofrece refugio, sino promesas susurradas de una "elevación" que hiela la sangre. ¿Qué clase de salvación cree estar otorgando?',
    },
    {
      'nombre': 'Gehrman, el Primer Cazador',
      'imagen': 'https://i.imgur.com/zncaQaM.jpeg',
      'descripcion':
          'El mentor de los cazadores y primer guerrero de la caza. Está atrapado en el Sueño del Cazador, atado a la voluntad de la Presencia Lunar. Ofrece consejo y apoyo a los cazadores novatos, aunque su mirada oculta un cansancio insondable.',
      'notas':
          'Sus palabras son amables, su guía inestimable. Pero en sus ojos hay algo roto... una súplica muda. ¿Acaso no desea más que el descanso? ¿O teme lo que vendrá cuando finalmente cierre los ojos?',
    },
    {
      'nombre': 'Eileen, el Cuervo',
      'imagen': 'https://i.imgur.com/qe9Hdw3.jpeg',
      'descripcion':
          'Una cazadora de cazadores, se encarga de aquellos que han caído en la locura de la sangre. Enigmática y reservada, sigue un código estricto y advierte a los demás cazadores sobre los peligros de perderse en la sed de sangre.',
      'notas':
          'No caza bestias, caza a los que se convierten en ellas sin darse cuenta. Su voz es un susurro de advertencia, su cuchilla la sentencia. La respeto… pero temo el día en que ella decida que mi hora ha llegado.',
    },
    {
      'nombre': 'La Muñeca',
      'imagen': 'https://i.imgur.com/CRzfQiE.jpeg',
      'descripcion':
          'Una figura artificial creada por Gehrman, su propósito es asistir a los cazadores en el Sueño del Cazador, otorgándoles poder con la sangre obtenida en la caza. Su naturaleza es un misterio, pero su comportamiento gentil sugiere un afecto sincero por los cazadores.',
      'notas':
          'Su sonrisa es suave, su voz, reconfortante. Pero... ¿es real? ¿Puede sentir o es solo una ilusión tejida para hacernos olvidar la pesadilla? A veces, cuando le hablo, creo ver un destello de algo más en sus ojos.',
    },
    {
      'nombre': 'Alfred',
      'imagen': 'https://i.imgur.com/mVGFoKr.jpeg',
      'descripcion':
          'Un devoto de Logarius y la misión de exterminar a los Sangre Vil. Su apariencia amable esconde un fanatismo brutal, dispuesto a cometer cualquier acto con tal de cumplir su propósito.',
      'notas':
          'Alfred sonríe mucho. Habla con entusiasmo de justicia y deber. Pero sus manos están rojas, y sus ojos, cuando menciona a Annalise, arden con un fuego que ni la luna podría apagar. ¿Es esto devoción… o locura disfrazada de fe?',
    },
    {
      'nombre': 'Maestro Willem',
      'imagen': 'https://i.imgur.com/WUhssgi.jpeg',
      'descripcion':
          'El antiguo rector de la Academia de Byrgenwerth, un erudito que rechazó la sangre en favor de la sabiduría. Su postura filosófica lo llevó a separarse de la Iglesia de la Sanación y sus discípulos continuaron su búsqueda de la verdad de diferentes maneras.',
      'notas':
          'Calla y observa. Solo señala el agua, como si en sus reflejos pudiera revelarse la verdad del cosmos. Quizás él entendió algo que todos los demás pasaron por alto... o quizás la respuesta que encontró lo dejó sin palabras.',
    },
    {
      'nombre': 'Annalise, Reina de los Sangre Vil',
      'imagen': 'https://i.imgur.com/OfUxqum.jpeg',
      'descripcion':
          'La líder inmortal de Cainhurst, descendiente de una línea de sangre prohibida. Busca perpetuar su linaje y preservar el poder de los Sangre Vil, en oposición a la Iglesia de la Sanación.',
      'notas':
          'Es hermosa y terrible. Su voz es como un eco desde otra era, su ambición insaciable. No sé si es una reina o un parásito... pero sé que el mundo no es lo suficientemente grande para ella y la Iglesia. Uno de los dos debe caer.',
    },
    {
      'nombre': 'Djura, Cazador Retirado',
      'imagen': 'https://i.imgur.com/4vz7W2A.jpeg',
      'descripcion':
          'Antiguo cazador que eligió proteger a las bestias en vez de exterminarlas. Desde lo alto de Viejo Yharnam, vigila a las criaturas deformadas y ataca a cualquier cazador que se acerque.',
      'notas':
          'Djura no es como los demás. No caza, protege. No ve monstruos en esas bestias… sino víctimas. Me pregunto si, al final, él es el único que realmente entendió algo sobre esta caza.',
    },
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    double textFontSize = screenWidth * 0.065;
    double descriptionFontSize = screenWidth * 0.035;

    return Scaffold(
      appBar: AppBar(title: const Text('Personajes')),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          decoration: BoxDecoration(
            color: Colors.black,
            image: const DecorationImage(
              image: NetworkImage(
                'https://i.imgur.com/your_background_image.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: screenWidth * 0.8, // Ajusta el ancho de la imagen
                height: screenHeight * 0.25, // Ajusta la altura de la imagen
                child: Image.network(
                  personajes[currentIndex]['imagen']!,
                  fit: BoxFit.contain, // BoxFit.contain
                ),
              ),
              const SizedBox(height: 10),
              Image.network(
                'https://i.imgur.com/yMUVgNI.png',
                width: screenWidth * 0.53,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 10),
              Text(
                personajes[currentIndex]['nombre']!,
                style: TextStyle(
                  fontSize: textFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Image.network(
                'https://i.imgur.com/hsDsnKr.png',
                width: screenWidth * 0.53,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  personajes[currentIndex]['descripcion']!,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: descriptionFontSize,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5, // Limita el número de líneas
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Notas…',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  personajes[currentIndex]['notas']!,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: descriptionFontSize,
                    color: Colors.white70,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5, // Limita el número de líneas
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: FloatingActionButton(
              onPressed:
                  currentIndex > 0
                      ? () {
                        setState(() {
                          currentIndex--;
                        });
                      }
                      : null,
              child: const Icon(Icons.arrow_back),
              backgroundColor: const Color.fromARGB(108, 0, 0, 0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: FloatingActionButton(
              onPressed:
                  currentIndex < personajes.length - 1
                      ? () {
                        setState(() {
                          currentIndex++;
                        });
                      }
                      : null,
              child: const Icon(Icons.arrow_forward),
              backgroundColor: const Color.fromARGB(120, 0, 0, 0),
            ),
          ),
        ],
      ),
    );
  }
}
