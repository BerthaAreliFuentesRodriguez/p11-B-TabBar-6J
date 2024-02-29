import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Tienda de comics Bertha Fuentes",
          ),
          bottom: TabBar(tabs: [
            Tab(
              text: "Comic",
              icon: Icon(Icons.auto_stories_outlined),
            ),
            Tab(
              text: "Contac",
              icon: Icon(Icons.call_sharp),
            ),
            Tab(
              text: "Comp",
              icon: Icon(Icons.add_shopping_cart),
            ),
            Tab(
              text: "Ubi",
              icon: Icon(Icons.add_location_outlined),
            ),
            Tab(
              text: "User",
              icon: Icon(Icons.co_present_rounded),
            ),
          ] //Texto Icono
              ),
        ),
        body: TabBarView(
          children: const <Widget>[
            Icon(Icons.auto_stories_outlined, size: 200, color: Colors.brown),
            Icon(Icons.call_sharp, size: 200, color: Color(0xff147a4b)),
            Icon(Icons.add_shopping_cart, size: 200, color: Color(0xff3071a8)),
            Icon(Icons.add_location_outlined,
                size: 200, color: Color(0xff77324c)),
            Icon(Icons.co_present_rounded, size: 200, color: Color(0xff827a35)),
          ],
        ),
      ),
    );
  }
}
