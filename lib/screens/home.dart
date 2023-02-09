import 'dart:math';
import 'package:gp/Models/Models.dart';
import 'package:flutter/material.dart';
import 'package:gp/support.dart';
import 'package:share_plus/share_plus.dart';
import 'package:gp/pic2.dart';
import 'package:gp/pic1.dart';
import 'package:gp/pic3.dart';
import 'package:gp/pic5.dart';
import 'package:gp/pic4.dart';
import 'package:gp/Map.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';



class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<home> {

  int _selectedIndex = 0;

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
      backgroundColor: Color.fromRGBO(53, 50, 49, 100),
      appBar: AppBar(
        title: Text("SEARCH FOR A DESTINATION", style: TextStyle(fontSize: 16)),
        backgroundColor: Color.fromRGBO(238, 234, 226, 100),
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
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
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            if (index == 0) {
              Navigator.of(context).pushReplacement(MaterialPageRoute
                (builder: (context) => const home()));
            }
            if (index == 1) {
              Navigator.of(context).pushReplacement(MaterialPageRoute
                (builder: (context) => const Map()));
            }
            if (index == 2) {
              Navigator.of(context).pushReplacement(MaterialPageRoute
                (builder: (context) => const support()));
            }
            if (index == 3) {
               {Share.share('com.example.gp');}
            }
          });
        },
        items: [

          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.map),
            title: Text("Map"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.support_agent),
            title: Text("Support"),
            selectedColor: Colors.teal,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.share),
            title: Text("Share"),
            selectedColor: Colors.pink,
          ),
        ],
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
                  if (data.title == title[0]) {
                    Navigator.of(context).pushReplacement(MaterialPageRoute
                      (builder: (context) => const pic1()));
                  }
                  if (data.title == title[3]) {
                    Navigator.of(context).pushReplacement(MaterialPageRoute
                      (builder: (context) => const pic2()));
                  }
                  if (data.title == title[1]) {
                    Navigator.of(context).pushReplacement(MaterialPageRoute
                      (builder: (context) => const pic3()));
                  }
                  if (data.title == title[2]) {
                    Navigator.of(context).pushReplacement(MaterialPageRoute
                      (builder: (context) => const pic5()));
                  }
                  if (data.title == title[4]) {
                    Navigator.of(context).pushReplacement(MaterialPageRoute
                      (builder: (context) => const pic4()));
                  }
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
                            color: Color.fromRGBO(
                                238, 234, 226, 100)) //الشادو حق البوكس
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
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            data.text,
            style: const TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
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
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close;
      },
    );
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