import 'dart:math';

import 'package:gp/Models/Models.dart';
import 'package:gp/screens/details.dart';
import 'package:flutter/material.dart';
import 'package:gp/NavBar.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController =
        PageController(initialPage: _currentPage, viewportFraction: 0.8);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Color.fromRGBO(53, 50, 49,100),
      appBar: AppBar(


        title: Text("SEARCH FOR A DESTINATION" ,style: TextStyle(fontSize: 16)),

        backgroundColor: Color.fromRGBO(238 ,234, 226, 100),
        foregroundColor: Colors.black,




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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(40.0),
              child: Center(
                child: Text("",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontSize: 30)),
              ),
            ),
            AspectRatio(
              aspectRatio: 0.85,
              child: PageView.builder(
                  itemCount: dataList.length,
                  physics: const ClampingScrollPhysics(),
                  controller: _pageController,
                  itemBuilder: (context, index) {
                    return carouselView(index);
                  }),
            )
          ],
        ),
      ),
    );
  }


  Widget carouselView(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0.0;
        if (_pageController.position.haveDimensions) {
          value = index.toDouble() - (_pageController.page ?? 0);
          value = (value * 0.038).clamp(-1, 1);
          print("value $value index $index");
        }
        return Transform.rotate(
          angle: pi * value,
          child: carouselCard(dataList[index]),
        );
      },
    );
  }

  Widget carouselCard(DataModel data) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Hero(
              tag: data.imageName,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(data: data)));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(
                            data.imageName,
                          ),
                          fit: BoxFit.fill),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 4,
                            color: Color.fromRGBO(238 ,234, 226, 100))//الشادو حق البوكس
                      ]),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            data.title,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            data.text,
            style: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );

  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Saudi Arabia Map',
    'Gravity Well',
    'Oil Tube',



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
      itemBuilder:(context,index){
        var result=matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}