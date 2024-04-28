import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  MyTextField({
    super.key,
    required this.hintText,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.onTertiary,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            fillColor: Theme.of(context).colorScheme.onSecondary,
            filled: true,
          ),
        ));
  }
}
