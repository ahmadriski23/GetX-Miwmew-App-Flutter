import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miwmew_app/app/shared/utils/colors.dart';

class AppText {
  static TextStyle boldText = GoogleFonts.poppins(
    color: AppColors.kBlackColor,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  static TextStyle semiBoldText = GoogleFonts.poppins(
      color: AppColors.kBlackColor, fontWeight: FontWeight.w600, fontSize: 14);
  static TextStyle regulerText = GoogleFonts.poppins(
      color: AppColors.kBlackColor, fontWeight: FontWeight.w400, fontSize: 14);
}
