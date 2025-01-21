import 'package:flutter/material.dart';

class MoveCard extends StatelessWidget {
  final int index;
  const MoveCard({super.key, required this.index});

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
          Text('Menacing Moonraz Maelstrom', style: Theme.of(context).textTheme.headlineSmall),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Image(image: NetworkImage('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/types/generation-viii/brilliant-diamond-and-shining-pearl/1.png'))

            ],
          )
        ],
      ),
    );
  }
}
