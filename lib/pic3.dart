import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gp/screens/home.dart';

class pic3 extends StatelessWidget {
  const pic3({super.key});


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
                'gravity well',
                style: TextStyle(color: Colors.white, fontSize: 22.0),
              ),
              background: Image(
                image: AssetImage('images/c.png'),

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
                        'This exhibit demonstrates the following principles (gravity - general relativity - space-time)./n We feel gravity all the time, its a normal part of our lives, it keeps our feet on the ground so we dont float away into space. And if we throw a ball up, it comes back down.· Gravity is described, in traditional or Newtonian mechanics, as a force that works between two bodies, and attracts them to each other. Originally, '
                            'any body that has mass affects an attractive force on other bodies, but this mutual force between bodies is usually so small that we do not feel with it. You, for example, do not feel lateral gravity from a person standing next to you, or even from larger objects such as cars or buildings. We only feel the gravitational force of massive masses, such as Earth.'
                        ,
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