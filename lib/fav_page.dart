import 'package:flutter/material.dart';

import 'package:flutter/material.dart';


class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: double.infinity,
      child:Center(child: Text("Fav Page"),) ,
    );
  }
}
