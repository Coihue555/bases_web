import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bases_web/provider/counter_provider.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';

class CounterProviderView extends StatelessWidget {
  
  final String base;

  const CounterProviderView({
    Key? key, 
    required this.base,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ( _ ) => CounterProvider(base),
      child: const _CounterProviderBody()
      );
  }
}

class _CounterProviderBody extends StatelessWidget {
  const _CounterProviderBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final counterProvider = Provider.of<CounterProvider>(context);

    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),

          const Text('Provider Counter', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text('Contador: ${counterProvider.counter}', 
                style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              )
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            CustomFlatButton(text: 'Disminuir', onPress: ()=> counterProvider.decrement()),
            CustomFlatButton(text: 'Incrementar', onPress: ()=> counterProvider.increment()),
          ],),
          const Spacer(),

          
        ],
      );
  }
}