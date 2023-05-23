// ignore_for_file: prefer_const_constructors

import 'package:front_end/shared/themes/app_colors.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class AppIcons {
  static Iconify nulo = Iconify(
    MaterialSymbols.add,
    size: 24,
    color: AppColors.black,
  );
  static Iconify add([color = AppColors.black]) => Iconify(
    MaterialSymbols.add,
    size: 24,
    color: color,
  );

  static Iconify alarmClock([color = AppColors.black]) => Iconify(
    Mdi.alarm_clock,
    size: 24,
    color: color,
  );

  static Iconify arrowBack([color = AppColors.black]) => Iconify(
    MaterialSymbols.arrow_back_rounded,
    size: 24,
    color: color,
  );

  static Iconify arrowDropDown([color = AppColors.black]) => Iconify(
    Mdi.arrow_drop_down,
    size: 24,
    color: color,
  );

  static Iconify arrowDropUp([color = AppColors.black]) => Iconify(
    Mdi.arrow_drop_up,
    size: 24,
    color: color,
  );

  static Iconify arrowForward([color = AppColors.black]) => Iconify(
    MaterialSymbols.arrow_forward_rounded,
    size: 24,
    color: color,
  );

  static Iconify bellRing([color = AppColors.black]) => Iconify(
    Mdi.bell_ring,
    size: 24,
    color: color,
  );

  static Iconify cardsHeart([color = AppColors.black]) => Iconify(
    Mdi.cards_heart,
    size: 24,
    color: color,
  );

  static Iconify cardsHeartOutline([color = AppColors.black]) => Iconify(
    Mdi.cards_heart_outline,
    size: 24,
    color: color,
  );

  static Iconify eye([color = AppColors.black]) => Iconify(
    Mdi.eye,
    size: 24,
    color: color,
  );

  static Iconify eyeOff([color = AppColors.black]) => Iconify(
    Mdi.eye_off,
    size: 24,
    color: color,
  );

  static Iconify fileDocument([color = AppColors.black]) => Iconify(
    Mdi.file_document_box_multiple,
    size: 24,
    color: color,
  );

  static Iconify handHeart([color = AppColors.black]) => Iconify(
    Mdi.hand_heart,
    size: 24,
    color: color,
  );

  static Iconify home([color = AppColors.black]) => Iconify(
    Mdi.home,
    size: 24,
    color: color,
  );

  static Iconify key([color = AppColors.black]) => Iconify(
    MaterialSymbols.vpn_key_rounded,
    size: 24,
    color: color,
  );

  static Iconify mail([color = AppColors.black]) => Iconify(
    MaterialSymbols.mail,
    size: 24,
    color: color,
  );

  static Iconify mapMarker([color = AppColors.black]) => Iconify(
    Mdi.map_marker,
    size: 24,
    color: color,
  );

  static Iconify mapSharp([color = AppColors.black]) => Iconify(
    MaterialSymbols.map_sharp,
    size: 24,
    color: color,
  );

  static Iconify personRounded([color = AppColors.black]) => Iconify(
    MaterialSymbols.person_rounded,
    size: 24,
    color: color,
  );

  static Iconify share([color = AppColors.black]) => Iconify(
    MaterialSymbols.share,
    size: 24,
    color: color,
  );

  static Iconify verified([color = AppColors.black]) => Iconify(
    Mdi.verified,
    size: 24,
    color: color,
  );
}
