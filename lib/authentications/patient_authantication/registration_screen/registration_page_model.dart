class ClinicRegModel {
  int id;
  String name;
  String email;
  String password;
  String phone;
  String address;
  String gender;
  int age;
  String place;
  String latitude;
  String longitude;
  String role;

  ClinicRegModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.address,
    required this.gender,
    required this.age,
    required this.place,
    required this.latitude,
    required this.longitude,
    required this.role,
  });

  factory ClinicRegModel.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic>? data = json['data']; // Get the 'data' map

    return ClinicRegModel(
      id: data != null && data['id'] != null ? data['id'] as int : 0,
      name: data != null ? data['name'] ?? '' : '',
      email: data != null ? data['email'] ?? '' : '',
      password: data != null ? data['password'] ?? '' : '',
      phone: data != null ? data['phone'] ?? '' : '',
      address: data != null ? data['address'] ?? '' : '',
      age: data != null && data['age'] != null ? data['age'] as int : 0,
      place: data != null ? data['place'] ?? '' : '',
      latitude: data != null ? data['latitude'] ?? '' : '',
      longitude: data != null ? data['longitude'] ?? '' : '',
      gender: data != null ? data['gender'] ?? '' : '',
      role: data != null ? data['role'] ?? '' : '',
    );
  }
}
