import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  MyButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onTertiary,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
