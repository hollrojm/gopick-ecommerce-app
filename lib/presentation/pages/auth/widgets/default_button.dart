import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color color;

  const DefaultButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
        onPressed: () => onPressed(),
        style: ElevatedButton.styleFrom(backgroundColor: color),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
