import 'package:flutter/material.dart';

class TitlesText extends StatelessWidget {
  final double height;
  final double fontSize;
  final String line1;
  final String line2;
  final String line3;
  final String lineExtra;
  const TitlesText({
    Key? key,
    this.height = 85,
    this.fontSize = 23,
    this.line1 = 'linha 1',
    this.line2 = 'linha 2',
    this.line3 = 'linha 3',
    this.lineExtra = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      // color: Colors.blue,
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: constraints.maxHeight * 0.55,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    line1,
                    style: TextStyle(
                        fontSize: fontSize, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    line2,
                    style: TextStyle(
                        fontSize: fontSize, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              height: constraints.maxHeight * 0.25,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: line3,
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    TextSpan(
                      text: lineExtra,
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
