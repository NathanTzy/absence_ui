import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training/core/components/custom_button.dart';
import 'package:training/core/extensions/date_ext.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/custom_sized_box.dart';
import '../../../core/constants/colors.dart';
import '../widgets/menu_button.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.images.bgHome.provider(),
              alignment: Alignment.topCenter,
            ),
          ),
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.network(
                      'https://static.independent.co.uk/2024/03/20/06/19110627-21c78610-f16a-4da1-9401-3fa84a7e6646.jpg',
                      width: 65.0,
                      height: 65.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SpaceWidth(12.0),
                  Expanded(
                    child: Text(
                      'Hi There!',
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                      maxLines: 2,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // context.push(const NotificationPage());
                    },
                    icon: Assets.icons.notificationRounded.svg(),
                  ),
                ],
              ),
              const SpaceHeight(24.0),
              Container(
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    Text(
                      DateTime.now().toFormattedTime(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0,
                        color: AppColors.blue,
                      ),
                    ),
                    Text(
                      DateTime.now().toFormattedDate(),
                      style: TextStyle(
                        color: AppColors.black[200],
                        fontSize: 12.0,
                      ),
                    ),
                    const SpaceHeight(18.0),
                    const Divider(),
                    const SpaceHeight(30.0),
                    Text(
                      DateTime.now().toFormattedDate(),
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.black[200],
                      ),
                    ),
                    const SpaceHeight(6.0),
                    Text(
                      '${DateTime(2024, 3, 14, 8, 0).toFormattedTime()} - ${DateTime(2024, 3, 14, 16, 0).toFormattedTime()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SpaceHeight(80.0),
              GridView(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 30.0,
                  mainAxisSpacing: 30.0,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  MenuButton(
                    label: 'Datang',
                    iconPath: Assets.icons.menu.datang.path,
                    onPressed: () {},
                  ),
                  MenuButton(
                    label: 'Pulang',
                    iconPath: Assets.icons.menu.pulang.path,
                    onPressed: () {},
                  ),
                  MenuButton(
                    label: 'Izin',
                    iconPath: Assets.icons.menu.izin.path,
                    onPressed: () {
                      // context.push(const PermitPage());
                    },
                  ),
                  MenuButton(
                    label: 'Catatan',
                    iconPath: Assets.icons.menu.catatan.path,
                    onPressed: () {
                      // context.push(const NotesPage());
                    },
                  ),
                ],
              ),
              const SpaceHeight(24.0),
              CustomButton.filled(
                onPressed: () {
                  showBottomSheet(
                    backgroundColor: AppColors.white,
                    context: context,
                    builder: (context) => Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 60.0,
                            height: 8.0,
                            child: Divider(color: AppColors.black[400]),
                          ),
                          const CloseButton(),
                          const Center(
                            child: Text(
                              'Oops !',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                          const SpaceHeight(4.0),
                          const Center(
                            child: Text(
                              'Aplikasi ingin mengakses Kamera',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                          const SpaceHeight(36.0),
                          CustomButton.filled(
                            onPressed: () {},
                            label: 'Tolak',
                            color: AppColors.blue[400]!,
                          ),
                          const SpaceHeight(16.0),
                          CustomButton.filled(
                            onPressed: () {
                              // context.pop();
                              // context.push(const AttendancePage());
                            },
                            label: 'Izinkan',
                          ),
                        ],
                      ),
                    ),
                  );
                },
                label: 'Attendance Using Face ID',
                icon: Assets.icons.attendance.svg(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}