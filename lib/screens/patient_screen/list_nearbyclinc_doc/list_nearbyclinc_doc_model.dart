class NearbyClinicDoctor {
  final int id;
  final String name;
  final String qualification;
  final String specialization;
  final int experience;
  final String clinicName;
  final String clinicAddress;
  final String clinicPhone;
  final String place;
  final bool available;
  final String status;
  final String image;

  NearbyClinicDoctor({
    required this.id,
    required this.name,
    required this.qualification,
    required this.specialization,
    required this.experience,
    required this.clinicName,
    required this.clinicAddress,
    required this.clinicPhone,
    required this.place,
    required this.available,
    required this.status,
    required this.image,
  });

  factory NearbyClinicDoctor.fromJson(Map<String, dynamic> json) {
    return NearbyClinicDoctor(
      id: json['id'] as int,
      name: json['name'] as String,
      qualification: json['qualification'] as String,
      specialization: json['specialization'] as String,
      experience: json['experience'] as int,
      clinicName: json['clinic_name'] as String,
      clinicAddress: json['clinic_address'] as String,
      clinicPhone: json['clinic_phone'] as String,
      place: json['place'] as String,
      available: json['available'] as bool,
      status: json['status'] as String,
      image: json['image'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'qualification': qualification,
      'specialization': specialization,
      'experience': experience,
      'clinic_name': clinicName,
      'clinic_address': clinicAddress,
      'clinic_phone': clinicPhone,
      'place': place,
      'available': available,
      'status': status,
      'image': image,
    };
  }
}
