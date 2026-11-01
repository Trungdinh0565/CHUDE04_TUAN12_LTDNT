import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';
import '../widgets/profile_header.dart';
import '../widgets/setting_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _notify = true;

  Widget _section(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .labelLarge
            ?.copyWith(color: Theme.of(context).colorScheme.primary),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hồ sơ')),
      body: SafeArea(
        child: ListView(
          children: [
            const ProfileHeader(name: 'Nguyễn Văn A', email: 'a@example.com'),

            _section('Giao diện'),
            SettingItem(
              icon: Icons.dark_mode_outlined,
              title: 'Chế độ tối',
              trailing: ValueListenableBuilder<bool>(
                valueListenable: isDark,
                builder: (_, value, __) => Switch(
                  value: value,
                  onChanged: (v) => isDark.value = v,
                ),
              ),
            ),

            _section('Tài khoản'),
            SettingItem(
              icon: Icons.edit_outlined,
              title: 'Chỉnh sửa hồ sơ',
              trailing: const Icon(Icons.chevron_right),
              // PHẢN HỒI: báo kết quả cho người dùng bằng SnackBar
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Đã lưu hồ sơ')),
              ),
            ),
            SettingItem(
              icon: Icons.notifications_outlined,
              title: 'Thông báo',
              trailing: Switch(
                value: _notify,
                onChanged: (v) => setState(() => _notify = v),
              ),
            ),
          ],
        ),
      ),
    );
  }
}