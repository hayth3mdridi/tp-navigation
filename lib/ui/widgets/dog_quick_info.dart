import 'package:flutter/material.dart';

class DogQuickInfo extends StatelessWidget {
  final String value;
  final String label;
  const DogQuickInfo(this.label, this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 17,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
