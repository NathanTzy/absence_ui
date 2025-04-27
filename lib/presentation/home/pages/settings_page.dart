import 'package:flutter/material.dart';
import 'package:training/core/extensions/build_context_ext.dart';
import 'package:training/presentation/home/pages/home_page.dart';

import '../../../core/components/custom_sized_box.dart';
import '../../../core/components/custom_title.dart';
import '../../../core/constants/colors.dart';


class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [
            const CustomTitle( title: 'Settings',),
            ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(18.0),
              children: [
                const Text(
                  'Account',
                  style: TextStyle(
                    color: AppColors.blue,
                  ),
                ),
                const SpaceHeight(4.0),
                ListTile(
                  onTap: () {},
                  title: const Text('Edit Profile'),
                  trailing: const Icon(Icons.chevron_right),
                ),
                Divider(
                  color: AppColors.white[600],
                  height: 6,
                  thickness: 0.1,
                ),
                ListTile(
                  onTap: () {},
                  title: const Text('Password'),
                  trailing: const Icon(Icons.chevron_right),
                ),
                Divider(
                  color: AppColors.white[600],
                  height: 6,
                  thickness: 0.4,
                ),
                ListTile(
                  onTap: () {},
                  title: const Text('Language'),
                  trailing: const Icon(Icons.chevron_right),
                ),
                Divider(
                  color: AppColors.white[600],
                  height: 6,
                  thickness: 0.4,
                ),
                const SpaceHeight(40.0),
                const Text(
                  'Preferences',
                  style: TextStyle(
                    color: AppColors.blue,
                  ),
                ),
                const SpaceHeight(4.0),
                ListTile(
                  onTap: () {},
                  title: const Text('Theme'),
                  trailing: const Icon(Icons.chevron_right),
                ),
                Divider(
                  color: AppColors.white[600],
                  height: 6,
                  thickness: 0.4,
                ),
                ListTile(
                  onTap: () {
                    context.push(const HomePage());
                  },
                  title: const Text('Notifications'),
                  trailing: const Icon(Icons.chevron_right),
                ),
                Divider(
                  color: AppColors.white[600],
                  height: 6,
                  thickness: 0.4,
                ),
                ListTile(
                  onTap: () {},
                  title: const Text('Attendance'),
                  trailing: const Icon(Icons.chevron_right),
                ),
                Divider(
                  color: AppColors.white[600],
                  height: 6,
                  thickness: 0.4,
                ),
                const SpaceHeight(40.0),
                const Text(
                  'Support',
                  style: TextStyle(
                    color: AppColors.blue,
                  ),
                ),
                const SpaceHeight(4.0),
                ListTile(
                  onTap: () {},
                  title: const Text('Terms of Service & Privacy'),
                  trailing: const Icon(Icons.chevron_right),
                ),
                Divider(
                  color: AppColors.white[600],
                  height: 6,
                  thickness: 0.4,
                ),
                ListTile(
                  onTap: () {},
                  title: const Text('Clear Cache'),
                  trailing: const Icon(Icons.chevron_right),
                ),
                Divider(
                  color: AppColors.white[600],
                  height: 6,
                  thickness: 0.4,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}