import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}

class MonAppli extends StatelessWidget{
  const MonAppli({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Magazine',
      debugShowCheckedModeBanner: false,
      home: const PageAccueil(),
    );
  }
}

class PageAccueil extends StatelessWidget{
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,  
        title: const Text('Magazine Infos'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.search),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Image(
              image: AssetImage('assets/images/logo.png'),
              height: 200,
              fit: BoxFit.cover,
              ),
            PartieTitre(),
            PartieTexte(),
            PartieIcone(),
            PartieRubrique(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Tu as cliqué dessus'))
          );
        },
        child:const Text('Click'),
        ),
    );
  }
}

class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Magazine Infos',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Votre magazine numérique, votre source d\'inspiration',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class PartieTexte extends StatelessWidget {
  const PartieTexte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: const Text(
        'Magazine Infos vous propose chaque semaine une sélection '
        'd\'articles sur l\'actualité, la technologie et la culture, '
        'rédigés par une équipe de journalistes passionnés.',
        style: TextStyle(
          fontSize: 14,
          height: 1.4,
        ),
      ),
    );
  }
}


class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Column(
              children: [
                Icon(Icons.phone, color: Colors.pink),
                SizedBox(height: 5),
                Text('TEL', style: TextStyle(color: Colors.pink)),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Icon(Icons.mail, color: Colors.pink),
                SizedBox(height: 5),
                Text('MAIL', style: TextStyle(color: Colors.pink)),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Icon(Icons.share, color: Colors.pink),
                SizedBox(height: 5),
                Text('PARTAGE', style: TextStyle(color: Colors.pink)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/images/rubrique1.png'),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/images/rubrique2.png'),
            ),
          ),
        ],
      ),
    );
  }
}