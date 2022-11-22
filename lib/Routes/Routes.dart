// ignore_for_file: file_names

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:techrank/Views/Badges/bronzebadge.dart';
import 'package:techrank/Views/Badges/expertbadge.dart';
import 'package:techrank/Views/Badges/goldbadge.dart';
import 'package:techrank/Views/Badges/silverbadge.dart';
import 'package:techrank/Views/MainScreen.dart';

class RoutesClass {
  static String mainscreen = '/';
  static String getMainscreenRoute() => mainscreen;
  static String bronzeBadge = '/second';
  static String getBronzeBadgeRoute() => bronzeBadge;
  static String silverBadge = '/third';
  static String getSilverBadgeRoute() => silverBadge;
  static String goldBadge = '/forth';
  static String getGoldBadgeRoute() => goldBadge;
  static String expertBadge = '/fifth';
  static String getExpertBadgeRoute() => expertBadge;
  static List<GetPage> routes = [
    GetPage(name: mainscreen, page: () => const MainScreen()),
    GetPage(name: bronzeBadge, page: () => const BronzeBadge()),
    GetPage(name: silverBadge, page: () => const SilverBadge()),
    GetPage(name: goldBadge, page: () => const GoldBadge()),
    GetPage(name: expertBadge, page: () => const ExpertBadge()),
  ];
}
