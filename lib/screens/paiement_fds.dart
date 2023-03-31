import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';

class DonFds extends StatelessWidget {
  const DonFds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        foregroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Don aux FDS",
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        children: [
          
           SizedBox(
               height: MediaQuery.of(context).size.height * 0.05,

          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                child: Image.asset(
                  "images/fds.jpg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const Text(
            "Mode de payment",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          
         
         Accordion(
          maxOpenSections: 1,
          headerBackgroundColorOpened: Colors.grey[300],
          scaleWhenAnimating: true,
          openAndCloseAnimation: false,
          headerPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
          sectionClosingHapticFeedback: SectionHapticFeedback.light,
          children: [
            AccordionSection(
              isOpen: false,
              leftIcon:  SizedBox(
                          width:  MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.height * 0.1,
                         
                          child: ClipRRect(
                            child: Image.asset(
                              "images/logo-moov-money.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
              headerBackgroundColor: Colors.black,
              headerBackgroundColorOpened: Colors.black,
              header: Text('Payement Par Moov Money', style: TextStyle(color: Colors.white)),
              content: Column(
                children: [
                  TextField(decoration: InputDecoration(hintText: "Entrer le montant"),),
                  ElevatedButton(onPressed: () {
                    
                  }, child: Text("envoyer"))
                ],
              ),
              contentHorizontalPadding: 20,
              contentBorderWidth: 1,
              
            ),
             AccordionSection(
              isOpen: false,
              leftIcon:  SizedBox(
                          width:  MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.height * 0.1,
                         
                          child: ClipRRect(
                            child: Image.asset(
                              "images/logo-orange-money.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
              headerBackgroundColor: Colors.black,
              headerBackgroundColorOpened: Colors.black,
              header: Text('Payement Par Orange Money', style: TextStyle(color: Colors.white)),
              content: Column(
                children: [
                  TextField(decoration: InputDecoration(hintText: "Entrer le montant"),),
                  ElevatedButton(onPressed: () {
                    
                  }, child: Text("envoyer"))
                ],
              ),
              contentHorizontalPadding: 20,
              contentBorderWidth: 1,
              
            ),
            
     
         ], ),
        
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
