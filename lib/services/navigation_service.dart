

import 'package:flutter/cupertino.dart';

class NavigationService{
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future navigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  void getBack(String routeName) {
    return navigatorKey.currentState!.pop();
  }
  
}

final navigationService = NavigationService();