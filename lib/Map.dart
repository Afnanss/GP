
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gp/tracking.dart';
import 'g.dart';
class Map extends StatelessWidget {
  const Map({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
    children: [
    SizedBox(
    width: double.infinity,
    height: double.infinity,
    child: Image.network(
    'https://i.pinimg.com/564x/7c/3d/8f/7c3d8fd46f51d80c77ac392c80d7ed72.jpg',
    fit: BoxFit.cover,
    ),
    ),
    SafeArea(
    child: Column(
    children: [
    const SizedBox(
    height: 20.0,
    ),
    const Center(
    child: Text(
    'Map',
    style: TextStyle(
    color: Colors.white,
    fontSize: 40.0,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    const Spacer(),
    // Build Widget Glassmorphism
    Padding(
    padding: const EdgeInsets.symmetric(
    horizontal: 20,
    ),
    child: Glassmorphism(
    blur: 15,
    opacity: 0.2,
    radius: 20,
    child: Container(
    height: 200,
    padding: const EdgeInsets.all(20),
    child: Column(
    children: [

    Text(
    'Click to find where you are',
    textAlign: TextAlign.center,
    style: TextStyle(
    color: Colors.white.withOpacity(0.8),
    fontSize: 24.0,
    ),
    ),
    const Spacer(),
    Glassmorphism(
    blur: 20,
    opacity: 0.1,
    radius: 50.0,
    child: TextButton(
    onPressed: () {




    },
    child: Container(
    padding: const EdgeInsets.symmetric(
    vertical: 20,
    horizontal: 20,
    ),
    child: const Text(
    'My Location!',
    style: TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    ),
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    ),
    ),
    const SizedBox(
    height: 100,
    ),
    ],
    ),
    ),
    ],
    ),
    );
    }
    }





