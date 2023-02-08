import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gp/screens/home.dart';

class pic1 extends StatelessWidget {
  const pic1({super.key});
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
  const MyHomePage({super.key, required this.title});

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
                'Saudi Arabia map',
                style: TextStyle(color: Colors.white, fontSize: 22.0),
              ),
              background: Image(
                image: AssetImage('images/a.png'),
              ),
            ),
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height *
                0.310, //قد ايش الصوره ماخذه حجمها بالصفحه

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
                      padding: const EdgeInsets.all(50.0),
                      child: Text(
                        'This exhibit shows the geography of the Kingdom of Saudi Arabia and i ts surface features, including mountains, plateaus and seas, in addition to defining the thirteen administrative regions and the most prominent cultural and civilizational manifestations in each region. It also highlights the most important ministries in the Kingdom, such as education and health, and their achievements.',
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