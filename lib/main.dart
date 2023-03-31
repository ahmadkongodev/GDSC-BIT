import 'package:flutter/material.dart';
import 'screens/about.dart';
import 'screens/donations.dart';
import 'screens/home.dart';
import 'screens/paiement_fds.dart';
import 'screens/paiment_deplaces.dart';
import 'screens/actions.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      
 routes: {
        '/':(context) => const Home(),
        '/about':(context) => const About(),
        '/DonFds':(context) => const DonFds(),
        '/DonDeplaces':(context) => const DonDeplaces(),
        '/Donation':(context) => const Donation(),
        '/Action':(context) => const ActionDon(),
      },
    )
  );
}