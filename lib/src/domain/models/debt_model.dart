class DebtModel {
  final int id;
  final int contactId;
  final String description;
  final double amount;
  final DateTime date;

  DebtModel({
    required this.id,
    required this.contactId,
    required this.description,
    required this.amount,
    required this.date,
  });

  @override
  String toString() {
    return 'DebtModel{id: $id, contactId: $contactId, description: $description, amount: $amount, date: $date}';
  }

  Map<String, dynamic> toJson() {
    return {
      'contactId': contactId,
      'description': description,
      'amount': amount,
      'date': date.toIso8601String(),
    };
  }

  factory DebtModel.fromJson(Map<String, dynamic> json) {
    return DebtModel(
      id: json['id'] as int,
      contactId: json['contactId'] as int,
      description: json['description'] as String,
      amount: json['amount'] as double,
      date: DateTime.parse(json['date'] as String),
    );
  }
}
