import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_translate/flutter_translate.dart';



String dropdownvalue = 'English';
var items = [
  'English',
  'العربــيـة',
  'Français',
  'Español',
  '中文',
];

String text = 'WELCOME  TO  MUSEUMS  TOURIST  GUIDE';
void main() {
//async {
  //var delegate = await LocalizationDelegate.create(
    //  fallbackLocale: 'en',
      //supportedLocales: ['en', 'ar', 'fr','chi','es']);
  //runApp(LocalizedApp(delegate, MyApp()));
runApp(MyApp());


   }


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body:  Container(
         // height: double.infinity,
          // width: double.infinity,
    child: Stack(
        children: [

        Align(
    child: Image.network(
    'https://cdn.britannica.com/46/198846-050-82EE84FC/Lady-Ermine-oil-panel-Leonardo-da-Vinci.jpg',
    width: 401.4,
    height: 818.4,
    fit: BoxFit.cover,
      ),

    ),
        Align(
          alignment: Alignment.center,
            child:  SizedBox(
          width: 250.0,
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 27,
              fontFamily: 'afnan',
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(text),
               // TypewriterAnimatedText('M U S U E M S'),
                //TypewriterAnimatedText('T O U R I S T'),
                //TypewriterAnimatedText('G U I E D E'),
              ],
           //   onTap: () {
             //   print("Tap Event");
              //},
            ),
          ),
            )

            ),
        Align(
          alignment: Alignment.bottomCenter,
          child:DropdownButton(
            // Initial Value
            value: dropdownvalue,
            // Down Arrow Icon
            icon: const Icon(Icons.keyboard_arrow_down),
            // Array list of items
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items,style: TextStyle(color: Colors.grey,fontFamily: 'afnan')),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              setState(() {
                if (dropdownvalue == items[0]){
                  text =  'hello';
                }
                if  (newValue == items[1]){
                  text =  'مرحبــا';
                }
                dropdownvalue = newValue!;

              });
            },
          ),
        ),
       ] ),
                  )));

  }
}