class ContactModel {
  final String name;
  final int id;
  final String photoUrl;

  ContactModel({
    required this.name,
    required this.id,
    required this.photoUrl,
  });

  factory ContactModel.fromJson(Map<String, dynamic> json) {
    return ContactModel(
      name: json['name'],
      id: json['id'],
      photoUrl: json['photoUrl'],
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
