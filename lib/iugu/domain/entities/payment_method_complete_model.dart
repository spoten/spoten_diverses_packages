import 'dart:convert';

class PaymentMethodCompleteModel {
  String? id;
  String? description;
  String? itemType;
  PaymentMethodFullData? data;

  PaymentMethodCompleteModel({
    this.id,
    this.description,
    this.itemType,
    this.data,
  });

  PaymentMethodCompleteModel copyWith({
    String? id,
    String? description,
    String? itemType,
    PaymentMethodFullData? data,
  }) {
    return PaymentMethodCompleteModel(
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

  factory PaymentMethodCompleteModel.fromMap(Map<String, dynamic> map) {
    return PaymentMethodCompleteModel(
      id: map['id'],
      description: map['description'],
      itemType: map['item_type'],
      data: PaymentMethodFullData.fromMap(map['data']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentMethodCompleteModel.fromJson(String source) =>
      PaymentMethodCompleteModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PaymentMethodModel(id: $id, description: $description, item_type: $itemType, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PaymentMethodCompleteModel &&
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

class PaymentMethodFullData {
  final String? brand;
  final String? holderName;
  final String? displayNumber;
  final String? bin;
  final int? year;
  final int? month;
  final String? lastDigits;
  final String? firstDigits;
  final String? maskedNumber;

  PaymentMethodFullData({
    this.brand,
    this.holderName,
    this.displayNumber,
    this.bin,
    this.year,
    this.month,
    this.lastDigits,
    this.firstDigits,
    this.maskedNumber,
  });

  PaymentMethodFullData copyWith({
    String? brand,
    String? holderName,
    String? displayNumber,
    String? bin,
    int? year,
    int? month,
    String? lastDigits,
    String? firstDigits,
    String? maskedNumber,
  }) {
    return PaymentMethodFullData(
      brand: brand ?? this.brand,
      holderName: holderName ?? this.holderName,
      displayNumber: displayNumber ?? this.displayNumber,
      bin: bin ?? this.bin,
      year: year ?? this.year,
      month: month ?? this.month,
      lastDigits: lastDigits ?? this.lastDigits,
      firstDigits: firstDigits ?? this.firstDigits,
      maskedNumber: maskedNumber ?? this.maskedNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'brand': brand,
      'holder_name': holderName,
      'display_number': displayNumber,
      'bin': bin,
      'year': year,
      'month': month,
      'last_digits': lastDigits,
      'first_digits': firstDigits,
      'masked_number': maskedNumber,
    };
  }

  factory PaymentMethodFullData.fromMap(Map<String, dynamic> map) {
    return PaymentMethodFullData(
      brand: map['brand'],
      holderName: map['holder_name'],
      displayNumber: map['display_number'],
      bin: map['bin'],
      year: map['year'],
      month: map['month'],
      lastDigits: map['last_digits'],
      firstDigits: map['first_digits'],
      maskedNumber: map['masked_number'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentMethodFullData.fromJson(String source) =>
      PaymentMethodFullData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PaymentMethodFullData(brand: $brand, holderName: $holderName, displayNumber: $displayNumber, bin: $bin, year: $year, month: $month, lastDigits: $lastDigits, firstDigits: $firstDigits, maskedNumber: $maskedNumber)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PaymentMethodFullData &&
        other.brand == brand &&
        other.holderName == holderName &&
        other.displayNumber == displayNumber &&
        other.bin == bin &&
        other.year == year &&
        other.month == month &&
        other.lastDigits == lastDigits &&
        other.firstDigits == firstDigits &&
        other.maskedNumber == maskedNumber;
  }

  @override
  int get hashCode {
    return brand.hashCode ^
        holderName.hashCode ^
        displayNumber.hashCode ^
        bin.hashCode ^
        year.hashCode ^
        month.hashCode ^
        lastDigits.hashCode ^
        firstDigits.hashCode ^
        maskedNumber.hashCode;
  }
}
