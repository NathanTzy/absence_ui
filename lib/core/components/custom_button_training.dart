import 'package:flutter/material.dart';
import '../core.dart';

class CustomButtonTraining extends StatelessWidget {
  // field "kalo udah buat field jangan lupa buat constructor"
  final String title;
  final Widget? preFixIcon;
  final Function() onPressed;
  final Color? bgColor;

  const CustomButtonTraining({
    super.key,
    required this.title,
    this.preFixIcon,
    required this.onPressed,
    this.bgColor = AppColors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor ,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18)),
        minimumSize: const Size.fromHeight(55),
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          preFixIcon ?? const SizedBox.shrink(),
                  if (preFixIcon != null && title.isNotEmpty)
                    const SizedBox(width: 0.0),
          const SpaceWidth(10),
          Text(
            title,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.white),
          ),
        ],
      ),
    );
  }
}