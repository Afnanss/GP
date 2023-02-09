import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gp/screens/home.dart';

class pic5 extends StatelessWidget {
  const pic5({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title,});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'oil tube',
                style: TextStyle(color: Colors.white, fontSize: 22.0),
              ),
              background: Image(
                image: AssetImage('images/r.png'),

              ),
            ),
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height *
                0.430, //قد ايش الصوره ماخذه حجمها بالصفحه

            //return button
            leading: new IconButton(
                icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
                onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute
                  (builder: (context)=>const home()))),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: 600,
                width: 10,
                decoration: BoxDecoration(
                  color: Color(0xFD010510),
                  border: Border.all(color: Colors.black, width: 0.1),
                ),
                //textSection Widget
                child: Center(
                  child: new Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'It is a model that simulates the shape of the pipes used by Aramco to transport oil. You can pass through it to get to know it more closely.This exhibit is an example of the pipeline across the Arabian Peninsula, known as the Tapeline, located north of the desert of Saudi Arabia, a historic feat of engineering that introduced energy to Europe in the aftermath of World War II, and when it started operating in 1950 it was the largest oil pipeline network in the world.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ]),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}