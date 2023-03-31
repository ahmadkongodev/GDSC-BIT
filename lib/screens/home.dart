import 'package:flutter/material.dart';
//import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
//import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.grey[300],
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                          width:  MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.height * 0.25,
                         
                          child: ClipRRect(
                            child: Image.asset(
                              "images/flag.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "DONNER POUR VOTRE NATION",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Sauvez le Burkina Faso",
                      style: TextStyle(fontSize: 15, color: Colors.green),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed("/DonFds");
            },
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.3,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15.0)),
                          ),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15.0)),
                            child: Image.asset(
                              "images/fds.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                          ),
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: const Center(
                            child: Text(
                              " DON aux FDS",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ]),
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),

          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed("/DonDeplaces");
            },
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.3,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15.0)),
                          ),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15.0)),
                            child: Image.asset(
                              "images/deplaces.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6)),
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: const Center(
                            child: Text(
                              "DON aux Deplaces",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ]),
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
                  onTap: () {},
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
                      ),
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
