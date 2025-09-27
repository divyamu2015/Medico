import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medico_project/authantication/login_screen/bloc/login_bloc.dart';
import 'package:medico_project/authantication/registration_screen/bloc/register_bloc_bloc.dart';
import 'package:medico_project/doctor_authentication/registration_screen/bloc/register_bloc_bloc.dart';
import 'package:medico_project/screens/intro_screens/splash_screen.dart';
//import 'package:medico_project/doctor_authentication/doctor_reg/doctor_reg_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginBloc()),
        BlocProvider(create: (context) => RegisterBlocBloc()),
        BlocProvider(create: (context) => DocRegisterBlocBloc()),
        //
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Medi-Co',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home:
            //ChatScreen(),
            // RoleSelectionScreen(),
            SplashScreen(),
        //DoctorRegistrationPage(),
      ),
    );
  }
}
