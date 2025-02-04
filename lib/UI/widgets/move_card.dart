import 'package:flutter/material.dart';

class MoveCard extends StatelessWidget {
  final String moveName;
  final String type;
  const MoveCard({super.key, required this.moveName, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 75, 
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        color: const Color.fromARGB(255, 234, 234, 234),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(moveName, style: Theme.of(context).textTheme.headlineSmall),
          Image(image: NetworkImage('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/types/generation-viii/brilliant-diamond-and-shining-pearl/1.png'))
        ],
      ),
    );
  }
}