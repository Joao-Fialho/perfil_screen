import 'package:flutter/material.dart';
import 'package:perfil_screen/create_perfil/controller/create_controller.dart';

class SignUpButton extends StatefulWidget {
  final double height;
  final Function()? onTap;
  const SignUpButton({Key? key, this.height = 70, this.onTap})
      : super(key: key);

  @override
  _SignUpButtonState createState() => _SignUpButtonState();
}

class _SignUpButtonState extends State<SignUpButton> {
  final CreateController controller = CreateController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: widget.height,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade300,
          borderRadius: BorderRadius.circular(widget.height * 0.23),
        ),
        alignment: Alignment.center,
        child: LayoutBuilder(builder: (context, constraints) {
          return Text(
            'Sign Up',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: constraints.maxHeight * 0.3,
            ),
          );
        }),
      ),
    );
  }
}
