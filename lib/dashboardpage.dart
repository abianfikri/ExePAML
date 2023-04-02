import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key, required this.nama});

  final String nama;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
              RichText(
                  text: TextSpan(
                    text: "Hallo, ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                    children: [
                      TextSpan(
                        text: '$nama',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                        )
                      )
                    ]
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 80)),
                      CircleAvatar(
                    backgroundImage: AssetImage("assets/image/pokemon-naga.png"),
                    radius: 17,
                  ),
                    ],
                  )
                )
            ],
          ),
          Padding(padding: EdgeInsets.all(20)
          ),
          Container(
            height: 30,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Pokedex",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          Center(
            child: Container(
              width: 400,
              height: 60,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Pokemon',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0)
                ),
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              'assets/image/poke.png',
              height: 100,
              width: 100,
            ),
            title: Text(
              "Maraidon",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                  text: "Electric",
                  style: TextStyle(
                    color: Colors.black, backgroundColor: Colors.yellow
                  ),
                  children: [
                    TextSpan(
                      text: "Dragon",
                      style: TextStyle(
                        color: Colors.white, backgroundColor: Color.fromARGB(255, 234, 138, 125)
                      )
                    ),
                  ]
                ),
                ),
                Text(
                  "Maraidon  is Much remains unknown about this creature. It resembles Cyclizar, but it is far more ruthless and powerful."
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              color: Colors.black,
            ),
          ),
          ListTile(
            isThreeLine: true,
            leading: Image.asset(
              'assets/image/poke-moon.png',
              height: 100,
              width: 100,
            ),
            title: Text(
              "Roaring Moon",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                  text: "Electric",
                  style: TextStyle(
                    color: Colors.black, backgroundColor: Colors.yellow
                  ),
                  children: [
                    TextSpan(
                      text: "Dragon",
                      style: TextStyle(
                        color: Colors.white, backgroundColor: Color.fromARGB(255, 234, 138, 125)
                      )
                    ),
                  ]
                ),
                ),
                Text(
                  "Roaring Moon  is Much remains unknown about this creature. It resembles Cyclizar, but it is far more ruthless and powerful."
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              color: Colors.black,
            ),
          ),
          ListTile(
            isThreeLine: true,
            leading: Image.asset(
              'assets/image/pokemon-naga.png',
              height: 100,
              width: 100,
            ),
            title: Text(
              "Charizad",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                  text: "Electric",
                  style: TextStyle(
                    color: Colors.black, backgroundColor: Colors.yellow
                  ),
                  children: [
                    TextSpan(
                      text: "Dragon",
                      style: TextStyle(
                        color: Colors.white, backgroundColor: Color.fromARGB(255, 234, 138, 125)
                      )
                    ),
                  ]
                ),
                ),
                Text(
                  "Charizad  is Much remains unknown about this creature. It resembles Cyclizar, but it is far more ruthless and powerful."
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 23),
            child: Divider(
              color: Colors.black,
            ),
          )
        ],
      ),
      )
    );
  }
}