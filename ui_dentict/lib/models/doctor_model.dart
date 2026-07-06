class DoctorModel {
  final String name;
  final String position;
  final double averageReview;
  final int totalReview;
  final String profile;

  DoctorModel({
    required this.name,
    required this.position,
    required this.averageReview,
    required this.totalReview,
    required this.profile,
  });
}

List<DoctorModel> nearbyDoctors = [
  DoctorModel(
    name: "Dr. Madge Roberts",
    position: "General Practitioner",
    averageReview: 4,
    totalReview: 90,
    profile: 'assets/doctor_1.jpg',
  ),
  DoctorModel(
    name: "Dr. Amelia Watson",
    position: "Cardiologist",
    averageReview: 4.5,
    totalReview: 128,
    profile: 'assets/doctor_2.jpg',
  ),
  DoctorModel(
    name: "Dr. Sophia Martinez",
    position: "Pediatrician",
    averageReview: 5,
    totalReview: 152,
    profile: 'assets/doctor_3.jpg',
  ),
];
