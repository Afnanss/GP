import 'package:flutter/material.dart';
import 'package:gp/screens/home.dart';
import 'package:gp/Map.dart';
import 'package:share_plus/share_plus.dart';
class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            color: Color.fromRGBO(53, 50, 49,100),
            child:ListView(
              children:[
                DrawerHeader(
                   child: Center(
                      child:Text(
                        '🤍',
                         style: TextStyle(fontSize: 35,color:Colors.white),
              ))
              ),
            ListTile(
                   leading: Icon(Icons.map),
                   title: Text('Map',style: TextStyle(fontSize: 20),),

                   onTap: () =>
                       Navigator.of(context).pushReplacement(MaterialPageRoute
                         (builder: (context)=>const Map()))
               ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.support),
                  title: Text('Support',style: TextStyle(fontSize: 20)),
                  onTap: () => null,
                ),
                Divider(),
                ListTile(

                  leading: Icon(Icons.share),
                  title: Text('Share',style: TextStyle(fontSize: 20)),
                  onTap: () {Share.share('com.example.gp');}

                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings',style: TextStyle(fontSize: 20)),
                  onTap: () => null,
                ),

             ]
    
    ),
    ),
    );

  }
}
