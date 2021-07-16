import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Estudo dir. | Matheus Canabarro',
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estudo dir. | Matheus Canabarro'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/pokemon_banner.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/pokemon_logo.png',
            fit: BoxFit.fill,
          ),
          Padding(padding: EdgeInsets.all(32)),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DiaryPokemon()));
              },
              icon: Icon(Icons.arrow_right),
              label: Text('Acessar pokedéx'),
            ),
          ),
        ],
      ),
    );
  }
}

class DiaryPokemon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda Pokémon'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Consultar pokémons (funcionando)'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Pokedex()));
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Meu pokémon (funcionando)'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyFavoritePokemon()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Perfil'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Pesquisar pokémon'),
          ),
          Image.asset(
            'images/pokemon_banner.jpg',
            fit: BoxFit.cover,
          ),
          Padding(padding: EdgeInsets.all(32)),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              label: Text('Voltar'),
            ),
          ),
        ],
      ),
    );
  }
}

class Pokedex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda Pokémon'),
      ),
      body: Center(
        child: Align(
          alignment: Alignment.center,
          child: Text(
              'Oops! Ainda não temos uma versão Flutter da Pokedéx...\n' +
                  'Mas você pode acessar minha pokedéx em Javascript!\n\n' +
                  'https://matheus-canabarro.github.io/pokedex-js'),
        ),
      ),
    );
  }
}

class MyFavoritePokemon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda Pokémon'),
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              'Pikachu',
              style: TextStyle(fontSize: 45),
            ),
          ),
          Image.asset(
            'images/pikachu.jpg',
            fit: BoxFit.cover,
          ),
          Padding(padding: EdgeInsets.all(100)),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              label: Text('Voltar'),
            ),
          ),
        ],
      ),
    );
  }
}
