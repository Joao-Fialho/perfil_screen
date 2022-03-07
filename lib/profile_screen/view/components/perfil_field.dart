import 'package:flutter/material.dart';
import 'package:perfil_screen/profile_screen/controller/profile_controller.dart';

class PerfilField extends StatefulWidget {
  final double height;

  const PerfilField({
    Key? key,
    this.height = 100,
  }) : super(key: key);

  @override
  State<PerfilField> createState() => _PerfilFieldState();
}

class _PerfilFieldState extends State<PerfilField> {
  final ProfileController controller = ProfileController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      // width: 330,
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Display Name
            Container(
              height: constraints.maxHeight * 0.5,
              child: LayoutBuilder(builder: (context, constraints) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Display Name',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline_rounded,
                            size: constraints.maxHeight * 0.23,
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'O campo não pode estar Vazio';
                          } else if (!value.contains(RegExp(r'[a-z]'))) {
                            return 'O campo tem que conter letras';
                          }
                        }),
                  ],
                );
              }),
            ),

            //Country
            Container(
              height: constraints.maxHeight * 0.5,
              child: LayoutBuilder(builder: (context, constraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Country',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.deepPurple.shade400,
                            )),
                        width: constraints.maxWidth,
                        child: LayoutBuilder(builder: (context, constraints) {
                          return Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: constraints.maxWidth * 9,
                                alignment: Alignment.center,
                                child: LayoutBuilder(
                                    builder: (context, constraints) {
                                  return AnimatedBuilder(
                                      animation: controller,
                                      builder: (context, buildContext) {
                                        return DropdownButtonHideUnderline(
                                          child: DropdownButton<ListObject>(
                                            iconSize: 35,
                                            isExpanded: true,
                                            menuMaxHeight:
                                                constraints.maxHeight,
                                            onChanged: controller.onChange,
                                            value: controller.dropdownValue,
                                            items: ProfileController.countryList
                                                .map<
                                                    DropdownMenuItem<
                                                        ListObject>>(
                                                  (ListObject item) =>
                                                      DropdownMenuItem<
                                                          ListObject>(
                                                    value: item,
                                                    child: Row(
                                                      children: [
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        CircleAvatar(
                                                            backgroundImage:
                                                                item.flagCountry
                                                                    .image),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(item.nameCountry),
                                                      ],
                                                    ),
                                                  ),
                                                )
                                                .toList(),
                                          ),
                                        );
                                      });
                                }),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          );
                        })),
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
