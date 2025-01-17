import 'dart:convert';

class TransferModel {
  String? id;
  String? createdAt;
  String? amountCents;
  String? amountLocalized;
  Receiver? receiver;

  TransferModel({
    this.id,
    this.createdAt,
    this.amountCents,
    this.amountLocalized,
    this.receiver,
  });

  TransferModel copyWith({
    String? id,
    String? createdAt,
    String? amountCents,
    String? amountLocalized,
    Receiver? receiver,
  }) {
    return TransferModel(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      amountCents: amountCents ?? this.amountCents,
      amountLocalized: amountLocalized ?? this.amountLocalized,
      receiver: receiver ?? this.receiver,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'created_at': createdAt,
      'amount_cents': amountCents,
      'amount_localized': amountLocalized,
      'receiver': receiver?.toMap(),
    };
  }

  factory TransferModel.fromMap(Map<String, dynamic> map) {
    return TransferModel(
      id: map['id'],
      createdAt: map['created_at'],
      amountCents: map['amount_cents'],
      amountLocalized: map['amount_localized'],
      receiver: Receiver.fromMap(map['receiver']),
    );
  }

  String toJson() => json.encode(toMap());

  factory TransferModel.fromJson(String source) =>
      TransferModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TransferModel(id: $id, created_at: $createdAt, amount_cents: $amountCents, amount_localized: $amountLocalized, receiver: $receiver)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TransferModel &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.amountCents == amountCents &&
        other.amountLocalized == amountLocalized &&
        other.receiver == receiver;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        createdAt.hashCode ^
        amountCents.hashCode ^
        amountLocalized.hashCode ^
        receiver.hashCode;
  }
}

class Receiver {
  String? id;
  String? name;

  Receiver({
    this.id,
    this.name,
  });

  Receiver copyWith({
    String? id,
    String? name,
  }) {
    return Receiver(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory Receiver.fromMap(Map<String, dynamic> map) {
    return Receiver(
      id: map['id'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Receiver.fromJson(String source) =>
      Receiver.fromMap(json.decode(source));

  @override
  String toString() => 'Receiver(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Receiver && other.id == id && other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
