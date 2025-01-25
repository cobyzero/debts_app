import 'dart:typed_data';

class ContactModel {
  final String name;
  final int id;
  final Uint8List photoUrl;

  ContactModel({
    required this.name,
    required this.id,
    required this.photoUrl,
  });

  factory ContactModel.fromJson(Map<String, dynamic> json) {
    return ContactModel(
      name: json['name'] as String,
      id: json['id'] as int,
      photoUrl: json['photoUrl'] as Uint8List,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'photoUrl': photoUrl,
    };
  }

  @override
  String toString() {
    return 'ContactModel{name: $name, id: $id, photoUrl: $photoUrl}';
  }
}
