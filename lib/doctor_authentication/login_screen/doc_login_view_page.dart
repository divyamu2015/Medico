import 'package:animated_input_border/animated_input_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medico_project/authantication/login_screen/bloc/login_bloc.dart';
import 'package:medico_project/doctor_authentication/registration_screen/doc_registration_page_view.dart';
import 'package:medico_project/screens/doctors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DoctorLoginScreen extends StatefulWidget {
  const DoctorLoginScreen({super.key});

  @override
  State<DoctorLoginScreen> createState() => _DoctorLoginScreenState();
}

class _DoctorLoginScreenState extends State<DoctorLoginScreen>
    with SingleTickerProviderStateMixin {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  late AnimationController _animationController;
  bool isloading = false;
  final String _selectedUserType = 'doctor';
  int? doctorId;
  final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..forward();
  }

  Future<void> loginState() async {
    print(123);
    FocusScope.of(context).unfocus();
    setState(() {
      isloading = true;
    });
    String emplId = emailController.text.trim();
    String emplPass = passController.text.trim();

    print('after validation');

    if (emplId.isEmpty || emplPass.isEmpty) {
      showError("Please enter all details");
      setState(() => isloading = false);
      return;
    }
    context.read<LoginBloc>().add(
      LoginEvent.userLogin(
        role: _selectedUserType,
        email: emplId,
        password: emplPass,
      ),
    );
  }

  Future<void> storeUserId(int doctorId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('id', doctorId);
    print('User ID stored: $doctorId');
  }

  Future<int?> getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    doctorId = prefs.getInt('id');
    print("Retrieved User ID: $doctorId");
    return doctorId;
  }

  void showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red),
    );
  }

  void showSuccess(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.green),
    );
  }

  Widget _buildTextField(
    String label, {
    required TextEditingController controller,
    required String? Function(String?)? validator,
    TextInputType keyboardType = TextInputType.text,
    // String? label,
  }) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextFormField(
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black),
          border: AnimatedInputBorder(
            animationValue: _animationController.value,
          ),
          focusedBorder: AnimatedInputBorder(
            animationValue: _animationController.value,
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(width: 2.0, color: Color(0xFF163A57)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            state.when(
              initial: () {},
              loading: () {
                setState(() {
                  isloading = true;
                });
              },
              success: (response) async {
                await storeUserId(response.userId);
                doctorId = await getUserId();
                setState(() {
                  isloading = false;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("User login successful"),
                      backgroundColor: Colors.green,
                    ),
                  );
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return
                        // ChatScreen(userId: userId!);
                        DoctorHomeScreen();
                      },
                    ),
                  );
                });
              },
              error: (error) {
                setState(() {
                  isloading = false;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Error: $error"),
                    backgroundColor: Colors.red,
                  ),
                );
              },
            );
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: SizedBox(
                height: h,
                width: w,
                // decoration: BoxDecoration(
                //   image: DecorationImage(
                //     opacity: 0.4,
                //     fit: BoxFit.fill,
                //     image: AssetImage('assets/images/loogo.jpeg'),
                //   ),
                // ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 55.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [Colors.white, Colors.purple.shade50],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 20,
                                offset: Offset(0, 8),
                              ),
                            ],
                            border: Border.all(
                              color: const Color.fromARGB(255, 115, 196, 243),
                              width: 2,
                            ),
                          ),
                          padding: const EdgeInsets.all(8),
                          child:
                              ClipOval(
                                child: Image.asset(
                                  "assets/images/images.jpeg",
                                  width: h * 0.25,
                                  height: h * 0.25,
                                  fit: BoxFit.cover,
                                ),
                              ).animate().scale(
                                duration: 3.5.seconds,
                                curve: Curves.easeOutBack,
                              ),
                        ),
                        const SizedBox(height: 20),
                        AnimatedBuilder(
                          animation: _animationController,
                          builder: (context, child) => Form(
                            key: _fromKey,
                            child: Card(
                              child: Column(
                                children: [
                                  // Padding(
                                  //   padding: const EdgeInsets.all(16.0),
                                  //   child: DropdownButtonFormField<String>(
                                  //     items: const [
                                  //       DropdownMenuItem(
                                  //         value: 'user',
                                  //         child: Text('User'),
                                  //       ),
                                  //       DropdownMenuItem(
                                  //         value: 'doctor',
                                  //         child: Text('Doctor'),
                                  //       ),
                                  //     ],
                                  //     decoration: InputDecoration(
                                  //       labelText: "Select Role",
                                  //       border: OutlineInputBorder(),
                                  //     ),
                                  //     validator: (value) {
                                  //       if (value == null || value.isEmpty) {
                                  //         return 'Please select a user type';
                                  //       }
                                  //       return null;
                                  //     },
                                  //     onChanged: (value) {
                                  //       setState(() {
                                  //         _selectedUserType = value!;
                                  //       });
                                  //     },
                                  //   ),
                                  // ),
                                  _buildTextField(
                                    "Email",
                                    keyboardType: TextInputType.emailAddress,
                                    controller: emailController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Enter your Email";
                                      }

                                      return null;
                                    },
                                  ),
                                  _buildTextField(
                                    "Password",
                                    //  keyboardType: TextInputType.pas,
                                    controller: passController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Enter your Password";
                                      }
                                      return null;
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),
                        ElevatedButton(
                          style: ButtonStyle(
                            fixedSize: WidgetStatePropertyAll(
                              Size(w * 0.9, 50),
                            ),
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.blueGrey,
                            ),
                          ),
                          onPressed: isloading ? null : loginState,
                          child: isloading
                              ? const CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              : const Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DoctorRegistrationPage();
                                },
                              ),
                            );
                          },
                          child: const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: 'Don\'t have an account?'),
                                TextSpan(
                                  text: 'SignUp',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 34, 61, 35),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
