import 'package:flutter/material.dart';

class ActionDon extends StatelessWidget {
  const ActionDon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        foregroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "NOS ACTIONS",
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        children: [
           SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Action(imageName: "images/action1.jpeg", title:"Don de riz Aux Deplacees de Arbinda" ),
          Action(imageName: "images/action1.jpeg", title:"Don de riz Aux Deplacees de Arbinda" ),
          Action(imageName: "images/action1.jpeg", title:"Don de riz Aux Deplacees de Arbinda" ),
         
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
                  onTap: () {},
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
                    Navigator.of(context).pushNamed("/Donation");
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

class Action extends StatelessWidget {
  String imageName;
  String title;
  Action({super.key, 
    required this.imageName,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.37,
        color: Colors.grey[100],
        child: Column(
          children: [
            Container(
              width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.32,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                child: Image.asset(
                  imageName,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
