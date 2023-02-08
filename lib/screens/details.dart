import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gp/Models/Models.dart';

import '../pic1.dart';

class DetailsScreen extends StatefulWidget {
  final DataModel data;
  const DetailsScreen({Key? key, required this.data}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black54),
          elevation: 0,
        ),
        body: SafeArea(
          child: Column(children: <Widget>[
            GestureDetector(
              onTap:()=>
                  Navigator.of(context).pushReplacement(MaterialPageRoute
                    (builder: (context)=>const pic1())) ,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  widget.data.title,
                  style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Hero(
                    tag: widget.data.imageName,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage(
                                widget.data.imageName,
                              ),
                              fit: BoxFit.fill),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 4),
                                blurRadius: 4,
                                color: Colors.black26)
                          ]),
                    ),
                  ),
                )),
          ],
          ),
        ));
  }
}
