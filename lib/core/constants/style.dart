import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tinder_clone/core/constants/color.dart';

class AppTextStyles {}

extension WhiteText on AppColors {
  static TextStyle small = GoogleFonts.mulish().copyWith(
    fontSize: 12.sp,
    color: AppColors.primary,
  );
  static TextStyle medium = GoogleFonts.mulish().copyWith(
    fontSize: 16.sp,
    color: AppColors.primary,
  );
  static TextStyle large = GoogleFonts.mulish().copyWith(
    fontSize: 35.sp,
    color: AppColors.primary,
  );
  static TextStyle smallBold = GoogleFonts.mulish().copyWith(
    fontSize: 12.sp,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );
  static TextStyle mediumBold = GoogleFonts.mulish().copyWith(
    fontSize: 16.sp,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );
  static TextStyle largeBold = GoogleFonts.mulish().copyWith(
    fontSize: 35.57.sp,
    color: AppColors.primary,
    fontWeight: FontWeight.bold,
  );
}

extension BlackText on AppColors {
  static TextStyle small = GoogleFonts.mulish().copyWith(
    fontSize: 12.sp,
    color: AppColors.secondary,
  );
  static TextStyle medium = GoogleFonts.mulish().copyWith(
    fontSize: 16.sp,
    color: AppColors.secondary,
  );
  static TextStyle large = GoogleFonts.mulish().copyWith(
    fontSize: 35.sp,
    color: AppColors.secondary,
  );
  static TextStyle smallBold = GoogleFonts.mulish().copyWith(
    fontSize: 12.sp,
    color: AppColors.secondary,
    fontWeight: FontWeight.bold,
  );
  static TextStyle mediumBold = GoogleFonts.mulish().copyWith(
    fontSize: 16.sp,
    color: AppColors.secondary,
    fontWeight: FontWeight.bold,
  );
  static TextStyle largeBold = GoogleFonts.mulish().copyWith(
    fontSize: 35.57.sp,
    color: AppColors.secondary,
    fontWeight: FontWeight.bold,
  );
}
