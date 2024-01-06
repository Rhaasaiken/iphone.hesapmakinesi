import 'package:flutter/material.dart';

class ContainerButtons extends StatelessWidget {
  Color color;
  Widget child;
  final Function ()islem;
  ContainerButtons({required this.color, required this.child, required this.islem
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.width * 0.2,
      decoration:
      BoxDecoration(color: color, borderRadius: BorderRadius.circular(360)),
      child: TextButton(
        child: Center(
          child: child,
        ),
        onPressed:islem,
      ),
    );
  }
}
