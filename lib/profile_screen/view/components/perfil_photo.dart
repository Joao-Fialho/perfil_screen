import 'package:flutter/material.dart';

class PerfilPhoto extends StatelessWidget {
  final double height;
  const PerfilPhoto({Key? key, this.height = 110}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
      child: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                image: DecorationImage(
                  image:
                      Image.asset('assets/image/photo_perfil_app.jpeg').image,
                ),
              ),
            ),
            Container(
              height: constraints.maxHeight * 0.32,
              width: constraints.maxHeight * 0.32,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.deepPurple.shade400, shape: BoxShape.circle),
              child: LayoutBuilder(builder: (context, constraints) {
                return Icon(
                  Icons.photo_camera,
                  color: Colors.white,
                  size: constraints.maxHeight * 0.5,
                );
              }),
            )
          ],
        );
      }),
    );
  }
}
