import 'package:flutter/material.dart';
import 'package:perfil_screen/profile_screen/view/profile_page.dart';

class ListObject {
  final String nameCountry;
  final Image flagCountry;

  ListObject(this.nameCountry, this.flagCountry);
}

class ProfileController extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();

  static List<ListObject> countryList = <ListObject>[
    ListObject(
      'Selecione um país',
      Image.asset('assets/image/semFoto.png'),
    ),
    ListObject(
      'Brasil',
      Image.asset('assets/image/bandeiraBR.png'),
    ),
    ListObject(
      'Alemanha',
      Image.asset('assets/image/bandeiraAlemanha.png'),
    ),
    ListObject(
      'Argentina',
      Image.asset('assets/image/bandeiraArgentina.png'),
    ),
  ];

  ListObject dropdownValue = countryList[0];

  onChange(ListObject? newvalue) {
    dropdownValue = newvalue!;

    notifyListeners();
    print('o pais selecionado foi: ${dropdownValue.nameCountry}');
  }

  // decisao(decision) {
  //   decision = dropdownValue.nameCountry;
  //   notifyListeners();
  // }

  // notifyListeners();

  // onTap(navigation) {
  //   if ((formKey.currentState?.validate() ?? false) &&
  //       dropdownValue.nameCountry != 'Selecione um país') {
  //     navigation;
  //   }
  // print('o nome do pais é ${dropdownValue.nameCountry}');
  //controller != PerfilField().countryList.first
  // }
}
