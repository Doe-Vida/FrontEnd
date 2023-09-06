// ignore_for_file: prefer_const_constructors

import 'package:front_end/constants/app_colors.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';

import 'package:iconify_flutter/iconify_flutter.dart';

class AppIcons {
  static Iconify add([color = AppColors.BLACK, size = 24]) => Iconify(
        MaterialSymbols.add,
        size: size,
        color: color,
      );

  static Iconify alarmClock([color = AppColors.BLACK, size = 24]) => Iconify(
        Mdi.alarm_clock,
        size: size,
        color: color,
      );

  static Iconify arrowBack([color = AppColors.BLACK, size = 24]) => Iconify(
        MaterialSymbols.arrow_back_rounded,
        size: size,
        color: color,
      );

  static Iconify arrowDropDown([color = AppColors.BLACK, size = 24]) => Iconify(
        Mdi.arrow_drop_down,
        size: size,
        color: color,
      );

  static Iconify arrowDropUp([color = AppColors.BLACK, size = 24]) => Iconify(
        Mdi.arrow_drop_up,
        size: size,
        color: color,
      );

  static Iconify arrowForward([color = AppColors.BLACK, size = 24]) => Iconify(
        MaterialSymbols.arrow_forward_rounded,
        size: size,
        color: color,
      );

  static Iconify bellRing([color = AppColors.BLACK, size = 24]) => Iconify(
        Mdi.bell_ring,
        size: size,
        color: color,
      );

  static Iconify cardsHeart([color = AppColors.BLACK, size = 24]) => Iconify(
        Mdi.cards_heart,
        size: size,
        color: color,
      );

  static Iconify cardsHeartOutline([color = AppColors.BLACK, size = 24]) =>
      Iconify(
        Mdi.cards_heart_outline,
        size: size,
        color: color,
      );

  static Iconify close([color = AppColors.BLACK, size = 24]) => Iconify(
        MaterialSymbols.close,
        size: size,
        color: color,
      );

  static Iconify eye([color = AppColors.BLACK, size = 24]) => Iconify(
        Mdi.eye,
        size: size,
        color: color,
      );

  static Iconify eyeOff([color = AppColors.BLACK, size = 24]) => Iconify(
        Mdi.eye_off,
        size: size,
        color: color,
      );

  static Iconify fileDocument([color = AppColors.BLACK, size = 24]) => Iconify(
        Mdi.file_document_box_multiple,
        size: size,
        color: color,
      );

  static Iconify handHeart([color = AppColors.BLACK, size = 24]) => Iconify(
        Mdi.hand_heart,
        size: size,
        color: color,
      );

  static Iconify home([color = AppColors.BLACK, size = 24]) => Iconify(
        Mdi.home,
        size: size,
        color: color,
      );

  static Iconify key([color = AppColors.BLACK, size = 24]) => Iconify(
        MaterialSymbols.vpn_key_rounded,
        size: size,
        color: color,
      );

  static Iconify mail([color = AppColors.BLACK, size = 24]) => Iconify(
        MaterialSymbols.mail,
        size: size,
        color: color,
      );

  static Iconify mapMarker([color = AppColors.BLACK, size = 24]) => Iconify(
        Mdi.map_marker,
        size: size,
        color: color,
      );

  static Iconify mapSharp([color = AppColors.BLACK, size = 24]) => Iconify(
        MaterialSymbols.map_sharp,
        size: size,
        color: color,
      );

  static Iconify personRounded([color = AppColors.BLACK, size = 24]) => Iconify(
        MaterialSymbols.person_rounded,
        size: size,
        color: color,
      );

  static Iconify share([color = AppColors.BLACK, size = 24]) => Iconify(
        MaterialSymbols.share,
        size: size,
        color: color,
      );

  static Iconify verified([color = AppColors.BLACK, size = 24]) => Iconify(
        Mdi.verified,
        size: size,
        color: color,
      );
}
