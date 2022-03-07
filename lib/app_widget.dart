import 'package:flutter/material.dart';
import 'package:perfil_screen/create_perfil/view/create_perfil_page.dart';
import 'package:perfil_screen/profile_screen/controller/profile_controller.dart';
import 'package:perfil_screen/profile_screen/view/profile_page.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProfileController())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const CreatePerfilPage(),
          '/profilePage': (context) => const ProfilePage(),
        },
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
