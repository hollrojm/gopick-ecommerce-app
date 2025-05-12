import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function(String text) onChanged;
  final bool? obscureText;
  const DefaultTextField({
    required this.label,
    required this.icon,
    required this.onChanged,
    super.key,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText ?? false,
      onChanged: (text) {
        onChanged(text);
      },
      decoration: InputDecoration(
        label: Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        prefixIcon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
