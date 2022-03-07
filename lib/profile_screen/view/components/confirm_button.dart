import 'package:flutter/material.dart';
import 'package:perfil_screen/profile_screen/controller/profile_controller.dart';

class ConfirmButton extends StatefulWidget {
  final double height;
  final Function() onTap;
  const ConfirmButton({Key? key, this.height = 70, required this.onTap})
      : super(key: key);

  @override
  _ConfirmButtonState createState() => _ConfirmButtonState();
}

class _ConfirmButtonState extends State<ConfirmButton> {
  final ProfileController controller = ProfileController();
  @override
  Widget build(context) {
    //  final  controller =;
    return AnimatedBuilder(
        animation: controller,
        builder: (context, buildContext) {
          return GestureDetector(
            onTap: widget.onTap,
            child: Container(
              height: widget.height,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade300,
                borderRadius: BorderRadius.circular(widget.height * 0.23),
              ),
              alignment: Alignment.center,
              child: LayoutBuilder(builder: (context, constraints) {
                return Text(
                  'Confirm',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: constraints.maxHeight * 0.3,
                  ),
                );
              }),
            ),
          );
        });
  }
}
