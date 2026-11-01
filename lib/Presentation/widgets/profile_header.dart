import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key, required this.name, required this.email});

  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          // Màu lấy từ ColorScheme: đổi theme là avatar đổi theo
          CircleAvatar(
            radius: 40,
            backgroundColor: colors.primaryContainer,
            child: Text(
              name.isNotEmpty ? name[0] : '?',
              style: text.headlineMedium?.copyWith(color: colors.onPrimaryContainer),
            ),
          ),
          const SizedBox(height: 12),
          Text(name, style: text.titleLarge),
          Text(email, style: text.bodyMedium),
        ],
      ),
    );
  }
}