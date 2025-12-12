class ClinicLoginModel {
  //String message;
  String role;
  int clinicdocId;
  String name;
  String password;
  String phone;
  String email;

  ClinicLoginModel({
    required this.phone,
    required this.role,
    required this.clinicdocId,
    required this.name,
    required this.password,
    required this.email,
  });

  factory ClinicLoginModel.fromJson(Map<String, dynamic> json) {
    return ClinicLoginModel(
      // message: json['message'],
      role: json['role'] ?? '',
      clinicdocId: json['id'] ?? 0,
      name: json['name'] ?? '',
      password: json['password'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '', // Handle optional phone field
    );
  }

  // Map<String, dynamic> toJson() {
  //   return {'user': userType, 'email': email, 'password': password};
  // }
}
