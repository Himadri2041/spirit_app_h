import 'package:spirit_app/utils/assets.dart';

enum HomeTabs {
  home,
  sports,
  pronite,
  merch,
  profile,
}

extension HomeTabsExtension on HomeTabs {
  String get title {
    switch (this) {
      case HomeTabs.home:
        return 'Home';
      case HomeTabs.sports:
        return 'Sports';
      case HomeTabs.pronite:
        return 'Pronite';
      case HomeTabs.merch:
        return 'Merch';
      case HomeTabs.profile:
        return 'Profile';
    }
  }

  String get icon {
    switch (this) {
      case HomeTabs.home:
        return Assets.home;
      case HomeTabs.sports:
        return Assets.sports;
      case HomeTabs.pronite:
        return Assets.pronite;
      case HomeTabs.merch:
        return Assets.merch;
      case HomeTabs.profile:
        return Assets.profile;
    }
  }
}
