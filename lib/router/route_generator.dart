import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:bases_web/ui/views/views.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch(settings.name){
      case '/stateful':
        return _fadeRoute(const CounterView(), '/stateful');

      case '/provider':
        return _fadeRoute(const CounterProviderView(), '/provider');
      
      default:
        return _fadeRoute(NoPageView(), '/404');
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