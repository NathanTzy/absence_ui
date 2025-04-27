import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training/core/constants/colors.dart';

import '../../../core/components/custom_sized_box.dart';
import '../../../core/components/custom_title.dart';
import '../widgets/history_attendence.dart';
import '../widgets/history_location.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomTitle( title: 'History',),
            ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(18.0),
              children: [
                CalendarTimeline(
                  showYears: true,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2020, 1, 15),
                  lastDate: DateTime.now().add(const Duration(days: 365 * 3)),
                  onDateSelected: (date) {},
                  leftMargin: 12,
                  monthColor: AppColors.black[400],
                  dayColor: AppColors.black[400],
                  dayNameColor: AppColors.black[600],
                  activeDayColor: Colors.white,
                  activeBackgroundDayColor: AppColors.blue[400],
                  dotColor: Colors.white,
                  selectableDayPredicate: (date) => date.day != 23,
                  locale: 'id',
                  height: 100,
                  width: 85,
                  fontSize: 40,
                  dayNameFontSize : 16,
                ),
                const SpaceHeight(45.0),
                HistoryAttendance(date: DateTime.now().toString(), time: '09.00', statusAbsence: 'Masuk', isAttendanceIn: true,),
                const SpaceHeight(10.0),
                const HistoryLocation(latitude: -8.1234567, longitude: 114.56789012,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}





