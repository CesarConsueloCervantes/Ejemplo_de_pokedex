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
        children: [
        ],
      ),
    );
  }
}
