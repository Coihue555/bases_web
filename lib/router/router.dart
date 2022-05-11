import 'package:fluro/fluro.dart';
import 'package:bases_web/router/route_handlers.dart';

class Flurorouter {

  static final FluroRouter router = FluroRouter();
  static void configureRoutes(){

    router.define('/', handler: counterStatefulHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful', handler: counterStatefulHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful/:base', handler: counterStatefulHandler, transitionType: TransitionType.fadeIn);
    router.define('/provider', handler: counterProviderHandler, transitionType: TransitionType.fadeIn);
    router.notFoundHandler = noPageViewHandler;


  }

  
}