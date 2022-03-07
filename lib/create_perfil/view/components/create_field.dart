import 'package:flutter/material.dart';
import 'package:perfil_screen/create_perfil/controller/create_controller.dart';

class CreateField extends StatefulWidget {
  final double height;
  final formKey = CreateController().formKey;
  CreateField({Key? key, this.height = 100}) : super(key: key);

  @override
  State<CreateField> createState() => _CreateFieldState();
}

bool _obscureText = true;

class _CreateFieldState extends State<CreateField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      // width: 330,
      child: LayoutBuilder(builder: (context, constranits) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //NOME COMPLETO
            Container(
              height: constranits.maxHeight * 0.25,
              child: LayoutBuilder(builder: (context, constraints) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Full Name',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'O campo não pode estar Vazio';
                        } else if (!value.contains(RegExp(r'[a-z]'))) {
                          return 'O campo tem que conter letras';
                        }
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_outline_rounded,
                          size: constraints.maxHeight * 0.2,
                          color: Colors.deepPurple.shade400,
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red.shade700,
                            width: 1.3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red.shade700,
                            width: 1.3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurple.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepPurple.shade900,
                            width: 1.3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
            //E-MAIL
            Container(
              height: constranits.maxHeight * 0.25,
              child: LayoutBuilder(builder: (context, constraints) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'E-mail',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'O campo não pode estar Vazio';
                        } else if (!value.contains(RegExp(r'[@]'))) {
                          return 'Um e-mail tem que ter @';
                        }
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          size: constraints.maxHeight * 0.2,
                          color: Colors.deepPurple.shade400,
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red.shade700,
                            width: 1.3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red.shade700,
                            width: 1.3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurple.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepPurple.shade900,
                            width: 1.3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
            //PASSWORD
            Container(
              height: constranits.maxHeight * 0.25,
              child: LayoutBuilder(builder: (context, constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'O campo não pode estar Vazio';
                        }
                      },
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_outline_rounded,
                          size: constraints.maxHeight * 0.2,
                          color: Colors.deepPurple.shade400,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          icon: Icon(
                            _obscureText == true
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            size: constraints.maxHeight * 0.2,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red.shade700,
                            width: 1.3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red.shade700,
                            width: 1.3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurple.shade400),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepPurple.shade900,
                            width: 1.3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ],
        );
      }),
    );
  }
}
