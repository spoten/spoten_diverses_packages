import 'dart:convert';

class PaymentMethodModel {
  String? id;
  String? description;
  String? itemType;
  PaymentMethodData? data;

  PaymentMethodModel({
    this.id,
    this.description,
    this.itemType,
    this.data,
  });

  PaymentMethodModel copyWith({
    String? id,
    String? description,
    String? itemType,
    PaymentMethodData? data,
  }) {
    return PaymentMethodModel(
      id: id ?? this.id,
      description: description ?? this.description,
      itemType: itemType ?? this.itemType,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'description': description,
      'item_type': itemType,
      'data': data?.toMap(),
    };
  }

  factory PaymentMethodModel.fromMap(Map<String, dynamic> map) {
    return PaymentMethodModel(
      id: map['id'],
      description: map['description'],
      itemType: map['item_type'],
      data: PaymentMethodData.fromMap(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentMethodModel.fromJson(String source) =>
      PaymentMethodModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PaymentMethodModel(id: $id, description: $description, item_type: $itemType, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PaymentMethodModel &&
        other.id == id &&
        other.description == description &&
        other.itemType == itemType &&
        other.data == data;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        description.hashCode ^
        itemType.hashCode ^
        data.hashCode;
  }
}

class PaymentMethodData {
  String? token;
  String? displayNumber;
  String? brand;

  PaymentMethodData({
    this.token,
    this.displayNumber,
    this.brand,
  });

  PaymentMethodData copyWith({
    String? token,
    String? displayNumber,
    String? brand,
  }) {
    return PaymentMethodData(
      token: token ?? this.token,
      displayNumber: displayNumber ?? this.displayNumber,
      brand: brand ?? this.brand,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'token': token,
      'display_number': displayNumber,
      'brand': brand,
    };
  }

  factory PaymentMethodData.fromMap(Map<String, dynamic> map) {
    return PaymentMethodData(
      token: map['token'],
      displayNumber: map['display_number'],
      brand: map['brand'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentMethodData.fromJson(String source) =>
      PaymentMethodData.fromMap(json.decode(source));

  @override
  String toString() =>
      'PaymentMethodData(token: $token, display_number: $displayNumber, brand: $brand)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PaymentMethodData &&
        other.token == token &&
        other.displayNumber == displayNumber &&
        other.brand == brand;
  }

  @override
  int get hashCode => token.hashCode ^ displayNumber.hashCode ^ brand.hashCode;
}
