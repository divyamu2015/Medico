class ClinicRegModel {
  final int id;
  final String clinicName;
  final String name;
  final String email;
  final String password;
  final String qualification;
  final String specialization;
  final int experience;
  final String clinicAddress;
  final String clinicPhone;
  final double latitude;
  final double longitude;
  final String role;
  final int age;
  final String gender;
  final String place;
  final String image;
  final String medicalId;
  final bool available;
  final String status;

  ClinicRegModel({

    required this.id,
    required this.clinicName,
    required this.name,
    required this.email,
    required this.password,
    required this.qualification,
    required this.specialization,
    required this.experience,
   required this.clinicAddress,
    required this.clinicPhone,
    required this.latitude,
    required this.longitude,
    required this.role,
    required this.age,
    required this.gender,
    required this.place,
    required this.image,
    required this.medicalId,
    required this.available,
    required this.status,
  });

  factory ClinicRegModel.fromJson(Map<String, dynamic> json) {
    return ClinicRegModel(
      id: json['id'] as int,
      clinicName: json['clinic_name'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      qualification: json['qualification'] as String,
      specialization: json['specialization'] as String,
      experience: json['experience'] as int,
      clinicAddress: json['clinic_address'] as String,
      clinicPhone: json['clinic_phone'] as String,
      latitude: double.parse(json['latitude'].toString()),
      longitude: double.parse(json['longitude'].toString()),
      role: json['role'] as String,
      age: json['age'] as int,
      gender: json['gender'] as String,
      place: json['place'] as String,
      image: json['image'] as String,
      medicalId: json['medical_id'] as String,
      available: json['available'] as bool,
      status: json['status'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'clinic_name': clinicName,
    'name': name,
    'email': email,
    'password': password,
    'qualification': qualification,
    'specialization': specialization,
    'experience': experience,
    'clinic_address': clinicAddress,
    'clinic_phone': clinicPhone,
    'latitude': latitude,
    'longitude': longitude,
    'role': role,
    'age': age,
    'gender': gender,
    'place': place,
    'image': image,
    'medical_id': medicalId,
    'available': available,
    'status': status,
  };
}
