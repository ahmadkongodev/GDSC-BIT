import 'package:flutter/material.dart';

class Donation extends StatelessWidget {
  const Donation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        foregroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Mes Dons",
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text("15.000"),
            subtitle: Text("30/03/2023"),
          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text("20.000"),
            subtitle: Text("15/03/2023"),
          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text("10.000"),
            subtitle: Text("10/03/2023"),
          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text("5.000"),
            subtitle: Text("5/03/2023"),
          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text("5.000"),
            subtitle: Text("5/03/2023"),
          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text("5.000"),
            subtitle: Text("5/03/2023"),
          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text("5.000"),
            subtitle: Text("5/03/2023"),
          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text("5.000"),
            subtitle: Text("5/03/2023"),
          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text("5.000"),
            subtitle: Text("5/03/2023"),
          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text("5.000"),
            subtitle: Text("5/03/2023"),
          ),
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text("5.000"),
            subtitle: Text("5/03/2023"),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        child: Container(
          color: Colors.grey[300],
          height: 55.0,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("/");
                  },
                  child: Column(
                    children: const [
                      Icon(Icons.home),
                      Text(
                        "Home",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("/Action");
                  },
                  child: Column(
                    children: const [
                      Icon(Icons.favorite),
                      Text(
                        "Action",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: const [
                      Icon(Icons.wallet),
                      Text(
                        "Donation",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("/about");
                  },
                  child: Column(
                    children: const [
                      Icon(Icons.help),
                      Text(
                        "About",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
