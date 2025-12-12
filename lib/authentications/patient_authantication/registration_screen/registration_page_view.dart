// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:animated_input_border/animated_input_border.dart';
import 'package:medico_project/authentications/patient_authantication/login_screen/login_view_page.dart';
import 'package:medico_project/authentications/patient_authantication/registration_screen/bloc/register_bloc_bloc.dart';
import 'package:geolocator/geolocator.dart'; // Import for location services
import 'package:geocoding/geocoding.dart'; // Import for geocoding
// Import the phone number field package

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage>
    with SingleTickerProviderStateMixin {
  final picker = ImagePicker();
  late AnimationController _animationController;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController ageController =
      TextEditingController(); // New controller for Age
  final TextEditingController addressController = TextEditingController();
  // We will no longer use a simple TextEditingController for phone.
  // We'll use the InternationalPhoneNumberInput's internal controller and callbacks.
  final TextEditingController placeController = TextEditingController();
  final TextEditingController phoneController =
      TextEditingController(); // New controller for Place

  String? _selectedGender;
  double? latitude;
  double? longitude;
  String _currentAddress = ''; // To display the fetched address

  // Variables to store phone number details from InternationalPhoneNumberInput
  // String? _phoneNumber;
  // String? _phoneCountryCode;
  // String? _phoneDialCode;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isloading = false;

  get loadFromJson => null;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    ageController.dispose(); // Dispose new controller
    addressController.dispose();
    phoneController.dispose(); // No longer needed for direct use
    placeController.dispose(); // Dispose new controller
    super.dispose();
  }

  void showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red),
    );
  }

  // Method to get current location
  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    //LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      showError('Location services are disabled.');
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        showError('Location permissions are denied');
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      showError(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
      return;
    }

    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      setState(() {
        latitude = position.latitude;
        longitude = position.longitude;
      });
      //await _getAddressFromLatLng(position);
    } catch (e) {
      showError("Error getting location: $e");
    }
  }

  // Method to get address from LatLng
  Future<void> getAddressFromLatLng(Position position) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );
      Placemark place = placemarks[0];
      setState(() {
        _currentAddress =
            "${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}";
        addressController.text = _currentAddress; // Set address to controller
        placeController.text = place.locality ?? ''; // Set place to controller
      });
    } catch (e) {
      showError("Error getting address: $e");
    }
  }

  // Future<String> loadFromJson() async {
  //   return await rootBundle.loadString('assets/countries/country_list_en.json');
  // }

  Future<void> saveForm() async {
    print(123);
    FocusScope.of(context).unfocus();
    setState(() {
      isloading = true;
    });
    final form = _formKey.currentState;
    if (form == null || !form.validate()) {
      return;
    }
    setState(() {
      isloading = true;
    });
    print('after validation');

    if (_selectedGender == null) {
      setState(() => isloading = false);
      showError("Please select gender");
      print("Gender not selected.");
      return;
    }

    // Basic validation for latitude/longitude
    if (latitude == null || longitude == null) {
      setState(() => isloading = false);
      showError("Please fetch your location.");
      print("Location not fetched.");
      return;
    }

    // Validate phone number details
    // if (_phoneNumber == null) {
    //   setState(() => isloading = false);
    //   showError("Please enter your phone number.");
    //   print("Phone number not entered.");
    //   return;
    // }
    // if (_phoneDialCode == null || _phoneDialCode!.isEmpty) {
    //   setState(() => isloading = false);
    //   showError("Please select a country code for your phone number.");
    //   print("Phone country code not selected.");
    //   return;
    // }

    print('Validation successful. Dispatching RegisterBlocEvent.');
    context.read<RegisterBlocBloc>().add(
      RegisterBlocEvent.userRegister(
        name: nameController.text,
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        age: ageController.text, // Pass age
        address: addressController.text,
        phone: phoneController.text,
        gender: _selectedGender!,
        place: placeController.text, // Pass place
        latitude: double.parse(latitude!.toStringAsFixed(6)), // Pass latitude
        longitude: double.parse(
          longitude!.toStringAsFixed(6),
        ), // Pass longitude
      ),
    );
  }

  Widget _buildTextField(
    String label, {
    required TextEditingController controller,
    required String? Function(String?)? validator,
    TextInputType keyboardType = TextInputType.text,
    int? maxLines,
    bool obscureText = false, // Added for password
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        maxLines: maxLines ?? 1, // Use maxLines if provided, otherwise 1
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        obscureText: obscureText,
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

  Widget _buildGenderSelector() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Gender",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              Radio<String>(
                value: "Male",
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
              ),
              const Text("Male"),
              Radio<String>(
                value: "Female",
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
              ),
              const Text("Female"),
            ],
          ),
          if (_selectedGender == null && !isloading)
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Please select gender",
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildLocationButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Location",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: _getCurrentLocation,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ), // Changed color
                child: const Row(
                  children: [
                    Icon(
                      Icons.my_location,
                      color: Colors.white,
                    ), // Changed icon
                    SizedBox(width: 8),
                    // Text("Get Location", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Latitude: ${latitude?.toStringAsFixed(6) ?? 'N/A'}",
                  ), // Changed default to N/A
                  Text("Longitude: ${longitude?.toStringAsFixed(6) ?? 'N/A'}"),
                ],
              ),
            ],
          ),
          if (latitude == null && longitude == null && !isloading)
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Please fetch your location",
                style: TextStyle(color: Colors.red, fontSize: 12),
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 161, 199, 236),
        appBar: AppBar(
          title: const Text(
            'Create an Account',
            style: TextStyle(
              color: Color.fromARGB(221, 65, 64, 64),
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          centerTitle: true,
        ),
        body: BlocConsumer<RegisterBlocBloc, RegisterBlocState>(
          listener: (context, state) {
            state.when(
              initial: () {},
              loading: () {
                setState(() => isloading = true);
              },
              success: (response) {
                setState(() => isloading = false);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Registration Successful"),
                    backgroundColor: Colors.green,
                  ),
                );
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
              error: (error) {
                setState(() => isloading = false);
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
            return
            //  Container(
            //   height: h,
            //   width: w,
            //   decoration: const BoxDecoration(
            //     image: DecorationImage(
            //       isAntiAlias: true,
            //       // invertColors: true,
            //       opacity: 0.3,
            //       fit: BoxFit.cover,
            //       image: AssetImage('assets/images/download (1).jpeg'),
            //     ),
            //   ),
            //   child:
            Center(
              child: Container(
                height:
                    h * 0.8, // Adjust height as needed, or use specific value
              //  width: w * 0, // Adjust width as needed
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/download.jpeg'),
                    fit: BoxFit.cover,
                    opacity:
                        0.3, // Apply opacity here if you want the image to be subtle
                  ),
                  borderRadius: BorderRadius.circular(
                    16,
                  ), // Match Card's border radius
                  color: Colors
                      .white, // Background color for when the image is transparent or not fully covering
                ),
                child: Card(
                  elevation: 6,
                  // semanticContainer: true,
                  borderOnForeground: true,
                  shadowColor: Colors.black,
                  margin: const EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 20,
                      right: 20,
                      bottom: 35,
                    ),
                    child: AnimatedBuilder(
                      animation: _animationController,
                      builder: (context, child) => Form(
                        key: _formKey,
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(
                              children: [
                                _buildTextField(
                                  "Name",
                                  controller: nameController,
                                  validator: (value) => value!.isEmpty
                                      ? "Please enter name"
                                      : null,
                                ),
                                const SizedBox(height: 10), // Reduced spacing
                                _buildGenderSelector(),
                                const SizedBox(height: 10), // Reduced spacing
                                _buildTextField(
                                  "Email",
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Please enter email";
                                    }
                                    final emailRegex = RegExp(
                                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                                    );
                                    if (!emailRegex.hasMatch(value)) {
                                      return "Invalid email";
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 10), // Reduced spacing
                                _buildTextField(
                                  "Password",
                                  controller: passwordController,
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: false, // Make password obscure
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Please enter password";
                                    }
                                    if (value.length < 6) {
                                      return "Min 6 characters";
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 10), // Reduced spacing
                                _buildTextField(
                                  "Age",
                                  controller: ageController,
                                  keyboardType: TextInputType
                                      .number, // Age should be a number
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Please enter your age";
                                    }
                                    if (int.tryParse(value) == null ||
                                        int.parse(value) <= 0) {
                                      return "Please enter a valid age";
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 10),
                                _buildTextField(
                                  "Phone Number",
                                  controller: phoneController,
                                  keyboardType: TextInputType
                                      .phone, // Age should be a number
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Please enter your Phone Number";
                                    }
                                    if (int.tryParse(value) == null ||
                                        int.parse(value) <= 0) {
                                      return "Please enter a valid age";
                                    }
                                    return null;
                                  },
                                ), // Reduced spacing
                                // InternationalPhoneNumberInput(
                                //   height: 60,
                                //   // No need for a separate controller here, the package manages it internally
                                //   // inputFormatters: const [], // Removed this as it can conflict with the formatter
                                //   formatter: MaskedInputFormatter(
                                //     '### ### ## ##',
                                //   ),
                                //   initCountry: CountryCodeModel(
                                //     name: "India",
                                //     dial_code: "+91",
                                //     code: "IN",
                                //   ),

                                //   betweenPadding: 23,
                                //   onInputChanged: (phone) {
                                //     // Update the state variables with the phone details
                                //     setState(() {
                                //       _phoneNumber = phone.number;
                                //       _phoneCountryCode = phone.code;
                                //       _phoneDialCode = phone.dial_code;
                                //     });
                                //     print(phone.code);
                                //     print(phone.dial_code);
                                //     print(phone.number);
                                //     print(phone.rawFullNumber);
                                //     print(phone.rawNumber);
                                //     print(phone.rawDialCode);
                                //   },
                                //   loadFromJson: loadFromJson,
                                //   dialogConfig: DialogConfig(
                                //     backgroundColor: const Color(0xFF444448),
                                //     searchBoxBackgroundColor: const Color(
                                //       0xFF56565a,
                                //     ),
                                //     searchBoxIconColor: const Color(0xFFFAFAFA),
                                //     countryItemHeight: 55,
                                //     flatFlag: true,
                                //     topBarColor: const Color(0xFF1B1C24),
                                //     selectedItemColor: const Color(0xFF56565a),
                                //     selectedIcon: Padding(
                                //       padding: const EdgeInsets.only(left: 10),
                                //       child: Image.asset(
                                //         "assets/check.png",
                                //         width: 20,
                                //         fit: BoxFit.fitWidth,
                                //       ),
                                //     ),
                                //     textStyle: TextStyle(
                                //       color: const Color(
                                //         0xFFFAFAFA,
                                //       ).withOpacity(0.7),
                                //       fontSize: 14,
                                //       fontWeight: FontWeight.w600,
                                //     ),
                                //     searchBoxTextStyle: TextStyle(
                                //       color: const Color(
                                //         0xFFFAFAFA,
                                //       ).withOpacity(0.7),
                                //       fontSize: 14,
                                //       fontWeight: FontWeight.w600,
                                //     ),
                                //     titleStyle: const TextStyle(
                                //       color: Color(0xFFFAFAFA),
                                //       fontSize: 18,
                                //       fontWeight: FontWeight.w700,
                                //     ),
                                //     searchBoxHintStyle: TextStyle(
                                //       color: const Color(
                                //         0xFFFAFAFA,
                                //       ).withOpacity(0.7),
                                //       fontSize: 14,
                                //       fontWeight: FontWeight.w600,
                                //     ),
                                //   ),
                                //   countryConfig: CountryConfig(
                                //     decoration: BoxDecoration(
                                //       border: Border.all(
                                //         width: 2,
                                //         color: const Color(0xFF3f4046),
                                //       ),
                                //       borderRadius: BorderRadius.circular(8),
                                //     ),
                                //     flatFlag: true,
                                //     noFlag: false,
                                //     textStyle: const TextStyle(
                                //       color: Colors.black,
                                //       fontSize: 16,
                                //       fontWeight: FontWeight.w600,
                                //     ),
                                //   ),
                                //   validator: (number) {
                                //     if (number == null ||
                                //         number.number.isEmpty) {
                                //       return "The phone number cannot be left empty";
                                //     }
                                //     // You might want to add more robust phone number validation here
                                //     return null;
                                //   },
                                //   phoneConfig: PhoneConfig(
                                //     focusedColor: const Color(0xFF6D59BD),
                                //     enabledColor: const Color(0xFF6D59BD),
                                //     errorColor: const Color(0xFFFF5494),
                                //     labelStyle: null,
                                //     labelText: null,
                                //     floatingLabelStyle: null,
                                //     focusNode: null,
                                //     radius: 8,
                                //     hintText: "Phone Number",
                                //     borderWidth: 2,
                                //     backgroundColor: Colors.transparent,
                                //     decoration: null,
                                //     popUpErrorText: true,
                                //     autoFocus: false,
                                //     showCursor: false,
                                //     textInputAction: TextInputAction.done,
                                //     autovalidateMode:
                                //         AutovalidateMode.onUserInteraction,
                                //     errorTextMaxLength: 2,
                                //     errorPadding: const EdgeInsets.only(
                                //       top: 14,
                                //     ),
                                //     errorStyle: const TextStyle(
                                //       color: Color(0xFFFF5494),
                                //       fontSize: 12,
                                //       height: 1,
                                //     ),
                                //     textStyle: const TextStyle(
                                //       color: Colors.black,
                                //       fontSize: 16,
                                //       fontWeight: FontWeight.w400,
                                //     ),
                                //     hintStyle: TextStyle(
                                //       color: Colors.black.withOpacity(0.5),
                                //       fontSize: 16,
                                //       fontWeight: FontWeight.w400,
                                //     ),
                                //   ),
                                // ),
                                const SizedBox(height: 10), // Reduced spacing
                                _buildTextField(
                                  "Address",
                                  maxLines: 3,
                                  controller: addressController,
                                  keyboardType: TextInputType.streetAddress,
                                  validator: (value) => value!.isEmpty
                                      ? "Please enter address"
                                      : null,
                                ),
                                const SizedBox(height: 10), // Reduced spacing
                                _buildTextField(
                                  "Place",
                                  controller: placeController,
                                  keyboardType: TextInputType.text,
                                  validator: (value) => value!.isEmpty
                                      ? "Please enter place"   
                                      : null,
                                ),
                                const SizedBox(height: 10), // Reduced spacing
                                _buildLocationButton(),
                                const SizedBox(height: 20),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    fixedSize: WidgetStatePropertyAll(
                                      Size(w * 0.9, 50),
                                    ),
                                    shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                    ),
                                    backgroundColor:
                                        const WidgetStatePropertyAll(
                                          Colors.blueGrey,
                                        ),
                                  ),
                                  onPressed: saveForm,
                                  child: isloading
                                      ? const CircularProgressIndicator(
                                          color: Colors.white,
                                        )
                                      : const Text(
                                          "REGISTER",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.white,
                                          ),
                                        ),
                                ),
                                SizedBox(height: h * 0.02),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Already have an account?",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                            builder: (ctx) =>
                                                const LoginScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        "Login",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
            // );
          },
        ),
      ),
    );
  }
}
