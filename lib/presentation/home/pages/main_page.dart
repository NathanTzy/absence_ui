import 'package:flutter/material.dart';
import 'package:training/presentation/home/pages/settings_page.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';
import 'history_page.dart';
import 'home_page.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final _widgets = [
    // const HomePage(),
    const HomePage(),
    const HistoryPage(),
    const SettingPage(),
    const Center(child: Text('This is profile page')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgets,
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16.0)),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.06),
              blurRadius: 16.0,
              blurStyle: BlurStyle.outer,
              offset: const Offset(0, -8),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            useLegacyColorScheme: false,
            currentIndex: _selectedIndex,
            onTap: (value) => setState(() => _selectedIndex = value),
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: const TextStyle(color: AppColors.blue),
            selectedIconTheme: const IconThemeData(color: AppColors.blue),
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: Assets.icons.nav.home.svg(
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 0 ? AppColors.blue : AppColors.black[200]!,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.nav.history.svg(
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 1 ? AppColors.blue : AppColors.black[200]!,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.nav.settings.svg(
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 2 ? AppColors.blue : AppColors.black[200]!,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'Setting',
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.nav.account.svg(
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == 3 ? AppColors.blue : AppColors.black[200]!,
                    BlendMode.srcIn,
                  ),
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
