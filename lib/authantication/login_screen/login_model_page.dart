class UserLoginModel {
  //String message;
  String role;
  int userId;
  String name;
  String password;
  String phone;
  String email;

  UserLoginModel({
    required this.phone,
    required this.role,
    required this.userId,
    required this.name,
    required this.password,
    required this.email,
  });

  factory UserLoginModel.fromJson(Map<String, dynamic> json) {
    return UserLoginModel(
      // message: json['message'],
      role: json['role'] ?? '',
      userId: json['id'] ?? 0,
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
