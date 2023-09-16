import 'package:firebase_auth/firebase_auth.dart';

class User {
   String username;
   String email;
   String password;


  User({
    required this.username,
    required this.email,
    required this.password,
  });


}

class Pet {
  final String id; // Unique pet ID
  final String name;
  final String breed;
  final int age;
  final String imageUrl; // URL to pet's picture
  final String medicalHistory; // Information about the pet's medical history

  Pet({
    required this.id,
    required this.name,
    required this.breed,
    required this.age,
    required this.imageUrl,
    required this.medicalHistory,
  });
}
