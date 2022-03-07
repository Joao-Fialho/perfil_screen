import 'package:flutter/material.dart';

class ReturnButton extends StatefulWidget {
  final double sizeIcon;
  final String returDirection;
  const ReturnButton({Key? key, this.sizeIcon = 40, this.returDirection = '/'})
      : super(key: key);

  @override
  State<ReturnButton> createState() => _ReturnButtonState();
}

class _ReturnButtonState extends State<ReturnButton> {
  @override
  Widget build(BuildContext context) {
    return
        // key: key,
        // iconSize: sizeIcon,
        GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(
          context,
          widget.returDirection,
        );
      },
      child: Icon(
        Icons.arrow_back,
        size: widget.sizeIcon,
      ),
    );

    // Navigator.pop(context);
  }
}
