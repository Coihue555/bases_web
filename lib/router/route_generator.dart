import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:bases_web/ui/pages/pages.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch(settings.name){
      case '/stateful':
        return _fadeRoute(const CounterPage(), '/stateful');

      case '/provider':
        return _fadeRoute(const CounterProviderPage(), '/provider');
      
      default:
        return _fadeRoute(const NoPage(), '/404');
    }
    
  }


  static PageRoute _fadeRoute(Widget child, String routeName){
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: ( _, __, ___ ) => child,
      transitionsBuilder: ( _, animation, __, ___ ) => 
        (kIsWeb) // revisa si el entorno es web
        ? FadeTransition(
          opacity: animation,
          child: child,
        )
        : CupertinoPageTransition(
          linearTransition: true,
          primaryRouteAnimation: animation,
          secondaryRouteAnimation: __,
          child: child,
        )
    );
  }
}