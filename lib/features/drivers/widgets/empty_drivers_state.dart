import 'package:flutter/material.dart';

class EmptyDriversState extends StatelessWidget {
  const EmptyDriversState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.person, size: 40, color: Colors.grey[400]),
          ),
          const SizedBox(height: 16),
          const Text(
            'لا يوجد سائقين',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'لم يتم إضافة أي سائقين بعد. ابدأ بإضافة سائق جديد لإدارة فريق السائقين.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
        ],
      ),
    );
  }
}
