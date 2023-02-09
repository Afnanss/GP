import 'package:flutter/material.dart';




class support extends StatefulWidget {
  const support({super.key});

  @override
  _HomePageThreeState createState() => _HomePageThreeState();
}

class _HomePageThreeState extends State<support> {
  final List options = [
    {
      "name": "Talk to Support Now",
      "key": "phone",
      "description": "Provide your problem and we will contact you",
      'Full':'Our Email is:'+'\n'+' TouristGuide@qu.edu.sa'
    },
    {
      "name": "Chat with our bot and customer services",
      "key": "chat",
      "description": "Start a chat session with us in twitter",
      'Full':'Our twitter bot are in @TouristGuideIOT'

    },
  ];

  String active = "";

  void setActiveFunc(String key) {
    setState(() {
      active = key;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Material(
        type: MaterialType.transparency,

        child: Container(
          width: size.width,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children:  [
              const Padding(padding: EdgeInsets.all(30)),
              RichText(text: const TextSpan(
                  text: 'Do you have ',
                  style:TextStyle(
                      color: Colors.white,
                      fontFamily: 'afnan',
                      fontSize: 28.0,
                      fontWeight: FontWeight.w600,
                      height: 1.2),
                  children: <TextSpan>[
                    TextSpan(text: 'any', style: TextStyle(color: Colors.indigo)),
                    TextSpan(text: ' question? ask us!'),

                  ])),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Column(
                    children: options.map((e) {
                      int index = options.indexOf(e);
                      return serviceCard(options[index], active, setActiveFunc);
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}



Widget serviceCard(Map item, String active, Function setActive) {
  bool isActive = active == item["key"];

  return Expanded(
    child: GestureDetector(
      onTap: () {
        setActive(item["key"]);
      },
      child: AnimatedContainer(
          margin: const EdgeInsets.only(bottom: 15.0),
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            color: isActive ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item["name"],
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                        fontFamily: 'afnan',
                        color: isActive
                            ? Colors.white
                            : const Color.fromRGBO(20, 20, 20, 0.96),
                      ),
                    ),
                    Text(
                      item["description"],
                      style: TextStyle(
                        fontFamily: 'afnan',
                        fontWeight: FontWeight.w500,
                        fontSize: 12.0,
                        color: isActive
                            ? Colors.white
                            : const Color.fromRGBO(20, 20, 20, 0.96),

                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(50),
                        child:Column(
                            children: [
                              if(isActive)
                                Text(
                                    item["Full"],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      fontFamily: 'afnan',
                                      color: isActive
                                          ? Colors.indigo
                                          : const Color.fromRGBO(20, 20, 20, 0.96),

                                    ))])
                    )],
                )])
      ),
    ),
  );
}