import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';

class VerseMarker extends StatelessWidget {
  final int verseNumber;

  const VerseMarker({super.key, required this.verseNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppTheme.darkPrimary),
        color: AppTheme.black,
      ),
      child: Center(
        child: Text(
          '$verseNumber',
          style: const TextStyle(
            color: AppTheme.gold,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
