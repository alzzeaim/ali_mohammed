import 'package:flutter/material.dart';

class Notifcations extends StatefulWidget {
  const Notifcations({super.key});

  @override
  State<Notifcations> createState() => _NotifcationsState();
}

class _NotifcationsState extends State<Notifcations> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text("data"),
      ),
    );
  }
}
