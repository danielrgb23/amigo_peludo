import 'dart:ui';

import 'package:flutter/material.dart';

class CardAnimal extends StatefulWidget {
  final String text;
  final String image;
  final int id;
  final VoidCallback onPress;
  const CardAnimal(
      {Key? key,
      required this.text,
      required this.image,
      required this.id,
      required this.onPress})
      : super(key: key);

  @override
  _CardAnimalState createState() => _CardAnimalState();
}

class _CardAnimalState extends State<CardAnimal> {
  @override
  Widget build(BuildContext context) {
    return Ink(
      child: Container(
          height: 200,
          width: 161,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.image),
              fit: BoxFit.contain, // Para preencher todo o espaço disponível
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, .3),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                    child: Text(
                      widget.text,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
