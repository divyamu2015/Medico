import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medico_project/authentications/patient_authantication/login_screen/bloc/login_bloc.dart';
import 'package:medico_project/authentications/patient_authantication/registration_screen/bloc/register_bloc_bloc.dart';
import 'package:medico_project/authentications/clinic_authentication/clinic_login/bloc/clinic_bloc.dart';
import 'package:medico_project/authentications/clinic_authentication/clinic_reg/bloc/clinic_registration_bloc.dart';
import 'package:medico_project/authentications/doctor_authentication/registration_screen/bloc/register_bloc_bloc.dart';
import 'package:medico_project/screens/clinic_doctor_screens/clidoc_create_slot/bloc/clidoc_create_slot_bloc.dart';
import 'package:medico_project/screens/hospital_doctor_screen/dochospital_create/bloc/bloc_bloc.dart';
import 'package:medico_project/screens/other_screens/intro_screens/splash_screen.dart';
import 'package:medico_project/screens/patient_screen/bokk_now_screen/bloc/book_now_bloc.dart';
import 'package:medico_project/screens/patient_screen/book_now_hos_screen/bloc/book_now_bloc.dart';
import 'package:medico_project/screens/patient_screen/list_nearbyclinc_doc/bloc/list_nearbyclinc_doc_bloc.dart';
import 'package:medico_project/screens/patient_screen/list_nearbyhos_doc/bloc/list_nearbyhos_bloc.dart';
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
        BlocProvider(create: (context) => ClinicBloc()),
        BlocProvider(create: (context) => ClinicRegistrationBloc()),
        BlocProvider(create: (context) => ClidocCreateSlotBloc()),
        BlocProvider(create: (context) => ListNearbyclincDocBloc()),
        BlocProvider(create: (context) => BookHosBloc()),
        BlocProvider(create: (context) => BlocBloc()),
        BlocProvider(create: (context) =>  BookNowBloc(),),
         BlocProvider(create: (context) =>  ListNearbyhosBloc(),)
      
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Medi-Co',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home:
            //ChatScreen(),
            // RoleSelectionScreen()
            // ,
            SplashScreen(),
        //  BookAppointmentScreen(),
        //DoctorRegistrationPage(),
      ),
    );
  }
}
