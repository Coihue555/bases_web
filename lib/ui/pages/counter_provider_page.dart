import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bases_web/provider/counter_provider.dart';
import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';

class CounterProviderPage extends StatelessWidget {
  const CounterProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ( _ ) => CounterProvider('12'),
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

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenu(),
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
      ),
    );
  }
}