import 'package:flutter/material.dart';
import '../../../core/components/custom_sized_box.dart';
import '../../../core/constants/colors.dart';

class HistoryAttendance extends StatelessWidget {
  final String time;
  final String date;
  final String statusAbsence;
  final bool isAttendanceIn;
  const HistoryAttendance({
    super.key,
    required this.time,
    required this.date,
    required this.statusAbsence,
    this.isAttendanceIn = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: isAttendanceIn ? AppColors.blue : AppColors.red,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Absensi $statusAbsence',
                style: const TextStyle(
                  fontSize: 16.0,
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                time,
                style: const TextStyle(
                  color: AppColors.white,
                ),
              ),
            ],
          ),
          const SpaceHeight(4.0),
          Row(
            children: [
              const Icon(Icons.location_on_outlined, color: AppColors.white,),
              const SpaceWidth(8.0),
              const Text(
                'Kantor',
                style: TextStyle(
                  color: AppColors.white,
                ),
              ),
              const Spacer(),
              Text(
                date.substring(0, 10),
                style: const TextStyle(
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
