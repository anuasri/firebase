import 'package:flutter/material.dart';
class newpg extends StatefulWidget {
  const newpg({Key? key}) : super(key: key);

  @override
  State<newpg> createState() => _newpgState();
}

class _newpgState extends State<newpg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purpleAccent,
    body: Container(
    decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage('fire/screen.jpg'),
    fit: BoxFit.cover
    ),
    ),
    ),
    );
  }
}
