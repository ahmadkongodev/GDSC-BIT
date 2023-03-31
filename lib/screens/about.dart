import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        foregroundColor: Colors.black,
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
          "About",
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.grey[300],
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.flag,
                      size: 80.0,
                    ),
                    Text(
                      "Don Total",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Text(
                  "1 000 000 XOF",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Container(
              color: Colors.grey[300],
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don Total au FDS",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const Text(
                    "500 000 XOF",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 20.0),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Container(
              color: Colors.grey[300],
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                const  Text(
                    "Don Total aux Deplacees",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
                  ),
               const   Text(
                    "500 000 XOF",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 20.0),
                  )
                ],
              ),
            ),
          ),
            SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          const Text(
            " Assistance:", textAlign: TextAlign.center,
          ),
            SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("+226 72 99 06 20"),
                Icon(Icons.whatshot),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("+226 72 99 06 20"),
                Icon(Icons.phone),
              ],
            ),
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
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      "/Donation",
                    );
                  },
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
                  onTap: () {},
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
