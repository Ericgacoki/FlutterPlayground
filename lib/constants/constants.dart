import 'package:flutter/widgets.dart';
import 'package:flutterplayground/flutter_widgets.dart';

import '../bottom_nav_page.dart';

class Constants {
  static final routes = <String, StatefulWidget Function(dynamic)>{
    '/bottomNav': (context) => const BottomNavPage(),
    '/flutterWidgets': (context) => const FlutterWidgets()
  };

  static const bottomNavPageRoute = '/bottomNav';
  static const flutterWidgetsRoute = '/flutterWidgets';
}
