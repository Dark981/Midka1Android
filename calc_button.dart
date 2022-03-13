import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color color;
  const NewWidget({
    Key? key,
    required this.title,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      padding: const EdgeInsets.all(1),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(title,style: const TextStyle(
              color: Colors.white
          ),),
        ),
      ),
    );
  }
}