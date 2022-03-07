import 'package:flutter/material.dart';
import 'package:perfil_screen/components/return_button.dart';

import 'package:perfil_screen/components/titles_text.dart';
import 'package:perfil_screen/create_perfil/controller/create_controller.dart';
import 'package:perfil_screen/create_perfil/view/components/create_field.dart';
import 'package:perfil_screen/create_perfil/view/components/sign_up_button.dart';

class CreatePerfilPage extends StatefulWidget {
  const CreatePerfilPage({Key? key}) : super(key: key);

  @override
  State<CreatePerfilPage> createState() => _CreatePerfilPageState();
}

class _CreatePerfilPageState extends State<CreatePerfilPage> {
  final CreateController keyController = CreateController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.bottomCenter,
          height: size.height,
          width: size.width,
          // color: Colors.purple,
          child: LayoutBuilder(builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth * 0.85,
              height: constraints.maxHeight * 0.95,
              alignment: Alignment.center,
              child: LayoutBuilder(builder: (context, constraints) {
                return Form(
                  key: keyController.formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReturnButton(
                        sizeIcon: constraints.maxHeight * 0.04,
                        returDirection: '/profilePage',
                      ),
                      TitlesText(
                        line1: '👋 Hello',
                        line2: 'Are you new here?',
                        line3: 'if you have an account',
                        lineExtra: ' /login',
                        height: constraints.maxHeight * 0.15,
                      ),
                      CreateField(
                        height: constraints.maxHeight * 0.55,
                      ),
                      SignUpButton(
                        height: constraints.maxHeight * 0.083,
                        onTap: () {
                          if (keyController.formKey.currentState?.validate() ??
                              false) {
                            Navigator.pushReplacementNamed(
                                context, '/profilePage');
                          }
                        },
                      ),
                    ],
                  ),
                );
              }),
            );
          }),
        ),
      ),
    );
  }
}
