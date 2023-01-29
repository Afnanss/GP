import 'package:flutter/material.dart';
import 'package:k/NavBar.dart';


class mainPage extends StatelessWidget {
  const mainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: NavBar(),
        backgroundColor: Color.fromARGB(255, 124, 111, 88),
        appBar: AppBar(

          title: Text("Search for destination" ,style: TextStyle(fontSize: 16)),

          backgroundColor: Color.fromARGB(255, 238, 234, 226),
          foregroundColor: Colors.black54,



          actions: [
            IconButton(
              onPressed: (){
                showSearch(
                  context: context,
                  delegate:CustomSearchDelegate(),);
              },
              icon: const Icon(Icons.search),

            ),
          ],
        ),



        body: ListView(
          children: <Widget>[
            Container(
              margin:EdgeInsets.all(80.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,  // add this
                    children: <Widget>[

                      ClipRRect(

                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),

                        child: Image(image:AssetImage('images/Lady_with_an_Ermine.jpg'),

                          // width: 450,
                          height: 350,
                          fit:BoxFit.cover,


                        ),
                      ),
                      ListTile(
                        title: Text('Lady with an Ermine By Leonardo da Vinci '),
                        subtitle: Text('NearBy'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin:EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child:Image(image:AssetImage('images/La_Bohémienne_endormie.jpg'),
                            // width: 300,
                            height: 150,
                            fit:BoxFit.cover

                        ),
                      ),
                      ListTile(
                        title: Text('The Sleeping Gypsy by Henri Rousseau  '),
                        subtitle: Text('0.1m'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin:EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child:Image(image:AssetImage('images/The_Girl_With_The_Pearl_Earring_(1665).jpg'),
                            // width: 300,
                            height: 150,
                            fit:BoxFit.cover

                        ),
                      ),
                      ListTile(
                        title: Text('Girl with a Pearl Earring by Johannes Vermeer  '),
                        subtitle: Text('1m'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin:EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child:Image(image:AssetImage('images/Vincent_van_Gogh_(1853-1890)_Caféterras_bij_nacht_(place_du_Forum)_Kröller-Müller_Museum_Otterlo_23-8-2016_13-35-40.JPG'),
                            // width: 300,
                            height: 150,
                            fit:BoxFit.fill

                        ),
                      ),
                      ListTile(
                        title: Text('Café Terrace at Night by Vincent van Gogh  '),
                        subtitle: Text('5m'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin:EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child:Image(image:AssetImage('images/370.jpg'),
                            // width: 300,
                            height: 150,
                            fit:BoxFit.fill

                        ),
                      ),
                      ListTile(
                        title: Text('Color Study, Squares with Concentric Rings by Wassily Kandinsky '),
                        subtitle: Text('10m'),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Lady with an Ermine',
    'Girl with a Pearl Earring',
    'Café Terrace at Night',
    'The Sleeping Gypsy',
    'Color Study, Squares with Concentric Rings',


  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: () {
        query = '';
      })
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },);
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var artifacts in searchTerms) {
      if (artifacts.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(artifacts);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var artifacts in searchTerms) {
      if (artifacts.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(artifacts);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}


