/// FlutterIconMap
/// Author Rebar Ahmad
/// https://github.com/Ahmadre
/// rebar.ahmad@gmail.com

export 'Packs/Material.dart';
export 'Packs/Cupertino.dart';
export 'Packs/LineIcons.dart';

import '../Models/IconPack.dart';

import 'Packs/Material.dart';
import 'Packs/Cupertino.dart';
import 'Packs/LineIcons.dart';

import 'package:flutter/widgets.dart';

class IconManager {
  static Map<String, IconData> getSelectedPack(IconPack? pickedPack) {
    switch (pickedPack) {
      case IconPack.material:
        return icons;
      case IconPack.cupertino:
        return cupertinoIcons;
      case IconPack.lineAwesomeIcons:
        return lineAwesomeIcons;
      default:
        return <String, IconData>{};
    }
  }
}
