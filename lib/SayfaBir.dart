import 'package:flutter/material.dart';

class SayfaBir extends StatefulWidget {
  const SayfaBir({Key? key}) : super(key: key);

  @override
  State<SayfaBir> createState() => _SayfaBirState();
}

class _SayfaBirState extends State<SayfaBir> {
  @override
  Widget build(BuildContext context) {
    // appbar kullanmayacağız, tasarım açısından
    return Center(
      child: Text("Sayfa Bir", style: TextStyle(color: Colors.black26, fontSize: 30),),
    );
  }
}
