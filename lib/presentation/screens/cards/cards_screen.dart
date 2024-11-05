import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  { 'elevation':0.0, 'title':'Desierto', 'description': 'Esto es un desierto muy caluroso.', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRooKyWopE2KuK35aMEqzA5DzXNLnlD5MDiQg&s'},
  { 'elevation':1.0, 'title':'Tundra', 'description': 'Esto es una tundra.', 'image': 'https://concepto.de/wp-content/uploads/2018/10/tundra1-e1539985627461-800x400.jpg'},
  { 'elevation':2.0, 'title':'Selva', 'description': 'Esto es una selva.', 'image': 'https://upload.wikimedia.org/wikipedia/commons/5/58/Selva_tropical_en_la_biosfera_de_el_rio_pl%C3%A1tano_Honduras.jpg'},
  { 'elevation':3.0, 'title':'Pradera', 'description': 'Esto es una pradera.', 'image': 'https://concepto.de/wp-content/uploads/2018/10/pradera1-e1539894968596.jpg'},
  { 'elevation':4.0, 'title':'Llanura', 'description': 'Esto es una llanura.', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ23eapKaKCBRcQYbFDZ1WdELnw91yoxeVG5A&s'},
  { 'elevation':4.0, 'title':'Bosque', 'description': 'Esto es un bosque.', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtpXG6e_ZoMankUxjybmHOX_n6rrfLcSA1Qg&s'}
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          children: [
            const Text("Tarjetas"), 
            //_CardType1()
            //...cards.map((card)=>_CardType1(elevation: card['elevation'], title: card['title'], description: card['description'], image: card['image'],)),
            ...cards.map((card)=> const _CardType2()),
            const SizedBox(height: 15,)
            ],
          ),
        ),
      )
    );
  }
}

class _CardType1 extends StatelessWidget {
  final double elevation;
  final String title;
  final String description;
  final String image;

  const _CardType1({
    required this.elevation,
    required this.title,
    required this.description,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(image),
            Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900)),
            Text(description)
          ],
        ),
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
  const _CardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)),
        side: BorderSide(
          color: Colors.red
        )
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Carretera",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              )
            ),
            Align(
              alignment: Alignment.bottomLeft ,
              child: Text("Esto es una carretera de alguna ciudad")
            )
          ],
        ),
      ),
    );
  }
}
