import 'package:flutter/material.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            onPress: () => Navigator.pushNamed(context, '/stateful'),
            color: Colors.black,),
          const SizedBox(width: 10,),
          CustomFlatButton(
            text: 'Contador Provider',
            onPress: () => Navigator.pushNamed(context, '/provider'),
            color: Colors.black,),
          const SizedBox(width: 10,),
          CustomFlatButton(
            text: 'Tercer pagina',
            onPress: () => Navigator.pushNamed(context, '/abcfu'),
            color: Colors.black,),
        ],
      ),
    );
  }
}