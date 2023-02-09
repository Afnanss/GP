import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gp/screens/home.dart';

class pic2 extends StatelessWidget {
  const pic2({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
            flexibleSpace: const FlexibleSpaceBar(
              title: Text(
                'Heart	Exhibit',
                style: TextStyle(color: Colors.white, fontSize: 22.0),
              ),
              background: Image(
                image: AssetImage('images/h.png'),
              ),
            ),
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height *
                0.600, //قد ايش الصوره ماخذه حجمها بالصفحه

            //return button
            leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.grey),
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
                  child: Column(children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
'\t \n The	heart	pumps	blood	to	all	parts	of	the	body	through	a huge	network	of	tubes	known	as	blood	vessels	so	that oxygen	and	food	reach	the	cells	and	get	rid	of	waste. The	work	of	the	heart	can	be	divided	into	two	main phases:\n·	Stage	1:	The	atria	fill	with	blood,	and	they	contract	to fill	the	ventricles	with	blood. \n·	The	second	stage:	the	ventricles	contract,	and	blood	is pumped	out	of	the	heart	to	reach	the	lungs	and	the	rest of	the	body.		'   ,                     style: TextStyle(
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