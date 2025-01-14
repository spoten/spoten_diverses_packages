import 'dart:convert';

class Logs {
  /// Descrição da Entrada de Log
  String? description;

  /// Anotações da Entrada de Log
  String? notes;

  Logs({
    this.description,
    this.notes,
  });

  Logs copyWith({
    String? description,
    String? notes,
  }) {
    return Logs(
      description: description ?? this.description,
      notes: notes ?? this.notes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'notes': notes,
    };
  }

  factory Logs.fromMap(Map<String, dynamic> map) {
    return Logs(
      description: map['description'],
      notes: map['notes'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Logs.fromJson(String source) => Logs.fromMap(json.decode(source));

  @override
  String toString() => 'Logs(description: $description, notes: $notes)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Logs &&
        other.description == description &&
        other.notes == notes;
  }

  @override
  int get hashCode => description.hashCode ^ notes.hashCode;
}
