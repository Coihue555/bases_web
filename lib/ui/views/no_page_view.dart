import 'package:flutter/material.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';

class NoPageView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text('404', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
            const Text('No se encuentra la pagina', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            CustomFlatButton(
              text: 'Volver',
              onPress: () => Navigator.pushNamed(context, '/stateful'),
              )
          ],
      )
    );
  }
}