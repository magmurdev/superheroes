import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:superheroes/resources/superheroes_colors.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const ActionButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: SuperheroesColors.blue,
        ),
        padding: const EdgeInsets.symmetric( vertical: 8, horizontal: 20,),
        margin: const EdgeInsets.only(bottom: 30),
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            fontSize: 14,
            color: SuperheroesColors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
