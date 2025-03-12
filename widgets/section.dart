import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String title;
  final double titleSize;
  final List<Widget> children;

  const Section({
    super.key,
    required this.title,
    this.titleSize = 20,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: titleSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        ...children,
      ],
    );
  }
}
