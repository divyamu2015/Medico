class PatientRegModel {
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
     String specialization;
  int experience;
  String clinicAddress;
  String hospitalAddress;
  String image;
  String medicalId;
  String status;

    PatientRegModel({
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
        required this.specialization,
    required this.experience,
    required this.clinicAddress,
    required this.hospitalAddress,
    required this.image,
    required this.medicalId,
    required this.status,
    required String category,
    });


  factory PatientRegModel.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic>? data = json['data']; // Get the 'data' map

    return PatientRegModel(
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
      specialization: data != null ? data['specialization'] ?? '' : '',
     experience: data != null ? data['experience'] ?? '' : 0,
     clinicAddress: data != null ? data['clinic_address'] ?? '' : 0, 
     hospitalAddress: data != null ? data['hospital_address'] ?? '' : '',
     image: data != null ? data['image'] ?? '' : '',
     medicalId: data != null ? data['medical_id'] ?? '' : '',
     status: data != null ? data['status'] ?? '' : '',
       category: data != null ? data['category'] ?? '' : '',
     
     
     );
  }
}
