import 'package:flutter/material.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';

class CounterView extends StatefulWidget {

  final String base;

  const CounterView({
    Key? key, 
    required this.base
    }) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {

  int counter = 10;

  @override
  void initState() {
    super.initState();
    if( int.tryParse(widget.base) != null ){
      counter = int.parse(widget.base);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        const Text('Stateful Counter', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      FittedBox(
        fit: BoxFit.contain,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
           child: Text('Contador: $counter', 
             style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
           )
        )
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomFlatButton(text: 'Disminuir', onPress: ()=> setState(()=> counter--)),
          CustomFlatButton(text: 'Incrementar', onPress: ()=> setState(()=> counter++)),
        ],
      ),
        const Spacer(),
        
      ],
    );
  }
}