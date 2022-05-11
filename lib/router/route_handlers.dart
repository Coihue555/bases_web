//Handler
import 'package:bases_web/ui/views/views.dart';
import 'package:fluro/fluro.dart';

final counterStatefulHandler = Handler(
    handlerFunc: ( context , params ) {
      return CounterView(base: params['base']?.first ?? '5');
    }
  );

  final counterProviderHandler = Handler(
    handlerFunc: ( context , params ) {
      print(params);
      return CounterProviderView(base: params['q']?.first ?? '12',);
    }
  );

  final noPageViewHandler = Handler(
    handlerFunc: ( context , params ) => NoPageView()
  );

