import 'package:flutter/material.dart';
import 'package:perfil_screen/components/return_button.dart';
import 'package:perfil_screen/components/titles_text.dart';
import 'package:perfil_screen/profile_screen/controller/profile_controller.dart';
import 'package:perfil_screen/profile_screen/view/components/confirm_button.dart';
import 'package:perfil_screen/profile_screen/view/components/perfil_field.dart';
import 'package:perfil_screen/profile_screen/view/components/perfil_photo.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // final ProfileController controller = ProfileController();

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<ProfileController>();

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
                  key: controller.formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReturnButton(
                        sizeIcon: constraints.maxHeight * 0.04,
                        returDirection: '/',
                      ),
                      TitlesText(
                        line1: '😎 Setting up your',
                        line2: 'profile',
                        line3: 'Add your profile photo',
                        height: constraints.maxHeight * 0.15,
                      ),
                      Center(
                        child: PerfilPhoto(
                          height: constraints.maxHeight * 0.16,
                        ),
                      ),
                      PerfilField(
                        height: constraints.maxHeight * 0.3,
                      ),
                      AnimatedBuilder(
                          animation: controller,
                          builder: (context, buildContext) {
                            return ConfirmButton(
                              onTap:
                                  // controller.onTap(
                                  //     Navigator.pushReplacementNamed(context, '/')),
                                  () {
                                if ((controller.formKey.currentState
                                            ?.validate() ??
                                        false) &&
                                    controller.dropdownValue.nameCountry !=
                                        'Selecione um país') {
                                  Navigator.pushReplacementNamed(context, '/');
                                }
                                print(
                                    'o nome do pais é ${controller.dropdownValue.nameCountry}');
                                //controller != PerfilField().countryList.first
                              },
                              height: constraints.maxHeight * 0.085,
                            );
                          }),
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
