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
        title: const Text('Magazine Infos'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.search),
        ],
      ),
      body: Center(
        child: Image.asset('assets/images/logo.png'),
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
