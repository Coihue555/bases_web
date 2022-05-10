import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton({
    Key? key, 
    required this.text, 
    required this.onPress,
    this.color = Colors.pink, 
    }) : super(key: key);

  final String text;
  final Color color;
  final Function onPress;


  @override
  Widget build(BuildContext context) {
    return TextButton(
            style: TextButton.styleFrom(
              primary: color
            ),
            onPressed: () => onPress(),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(text)
            )
          );
  }
}