import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/animation_container.dart';
import 'package:componentes/src/pages/avater_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/collapsing_toolbar_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/input_page.dart';
import 'package:componentes/src/pages/listview_page.dart';
import 'package:componentes/src/pages/page_widget_page.dart';
import 'package:componentes/src/pages/slider_page.dart';
import 'package:componentes/src/pages/widget_day.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> routesApp() {
    return <String, WidgetBuilder>{
      '/' : (context) => HomePage(),
      'alert' : (context) => AlertPage(),
      'avatar' : (context) => AvatarPage(),
      'card' : (context) => CardPage(),
      'animatedContainer' : (context) => AnimatedContainerPage(),
      'inputs' : (context) => InputPage(),
      'slider' : (context) => SliderPage(),
      'list' : (context) => ListPage(),
      'widgetDay' : (context) => WidgetDayPage(),
      'page' : (context) => PageViewPage(),
      'sliverAppBar' : (context) => MainCollapsingToolbar()
    };
  }