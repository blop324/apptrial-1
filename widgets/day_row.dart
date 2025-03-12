import 'package:flutter/material.dart';

class DayRow extends StatelessWidget {
  const DayRow({super.key});

  @override
  Widget build(BuildContext context) {
    final days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thur', 'Fri', 'Sat'];
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: days.asMap().entries.map((entry) {
        return Column(
          children: [
            Text(
              entry.value,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 4),
            Text(
              '${entry.key + 1}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
