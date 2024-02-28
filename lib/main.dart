import 'package:flutter/material.dart';

void main() => runApp(MiListaCard());

class MiListaCard extends StatelessWidget {
  const MiListaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App ListView Castaneda",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: PaginaInicio(),
    );
  }
}

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  List<String> images = [
    "assets/images/av1.jpg",
    "assets/images/av2.jpg",
    "assets/images/av3.jpg",
    "assets/images/av4.jpg",
    "assets/images/av5.jpeg",
    "assets/images/av6.jpg",
    "assets/images/av7.jpg",
    "assets/images/av8.jpg",
    "assets/images/av9.jpg",
    "assets/images/av10.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Gabriela Castaneda"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index]),
              ),
              title: Text("This is title"),
              subtitle: Text("This is subtitle"),
            ),
          );
        },
        itemCount: images.length,
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
