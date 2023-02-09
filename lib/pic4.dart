import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gp/screens/home.dart';

class pic4 extends StatelessWidget {
  const pic4({super.key});


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
                'Manual Excavator',
                style: TextStyle(color: Colors.white, fontSize: 22.0),
              ),
              background: Image(
                image: AssetImage('images/t.png'),

              ),
            ),
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height *
                0.640, //قد ايش الصوره ماخذه حجمها بالصفحه

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
                        'It is a very old manual drilling machine for oil wells. It can drill short distances because a tube must be added to the tool to extend it as the drilling depth increases, which means that the machine becomes heavier and moved with the descent into the depth of the well. The visitor can try the manual excavator machine by moving it and watching the screen at the top to know the number of turns.',
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