import 'dart:convert';

import 'data_entry/custom_variables.dart';

class CustomersModel {
  int totalItems;
  List<CustomerModel>? items;
  CustomersModel({
    this.totalItems = 0,
    this.items,
  });

  CustomersModel copyWith({
    int? totalItems,
    List<CustomerModel>? items,
  }) {
    return CustomersModel(
      totalItems: totalItems ?? this.totalItems,
      items: items ?? this.items,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'total_items': totalItems,
      'items': items?.map((x) => x.toMap()).toList(),
    };
  }

  factory CustomersModel.fromMap(Map<String, dynamic> map) {
    return CustomersModel(
      totalItems: map['total_items'] ?? map['totalItems'],
      items: List<CustomerModel>.from(
          map['items']?.map((x) => CustomerModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomersModel.fromJson(String source) =>
      CustomersModel.fromMap(json.decode(source));

  @override
  String toString() => 'CustomersModel(totalItems: $totalItems, items: $items)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CustomersModel && other.totalItems == totalItems;
  }

  @override
  int get hashCode => totalItems.hashCode ^ items.hashCode;
}

class CustomerModel {
  String? id;
  String? email;
  String? name;
  String? notes;
  String? createdAt;
  String? updatedAt;
  List<CustomVariables>? customVariables;
  String? zipCode;
  int? number;
  String? complement;
  String? cpfCnpj;
  CustomerModel({
    this.id,
    this.email,
    this.name,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.customVariables,
    this.zipCode,
    this.number,
    this.complement,
    this.cpfCnpj,
  });

  CustomerModel copyWith({
    String? id,
    String? email,
    String? name,
    String? notes,
    String? createdAt,
    String? updatedAt,
    List<CustomVariables>? customVariables,
    String? zipCode,
    int? number,
    String? complement,
    String? cpfCnpj,
  }) {
    return CustomerModel(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      customVariables: customVariables ?? this.customVariables,
      zipCode: zipCode ?? this.zipCode,
      number: number ?? this.number,
      complement: complement ?? this.complement,
      cpfCnpj: cpfCnpj ?? this.cpfCnpj,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'notes': notes,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'custom_variables': customVariables?.map((x) => x.toJson()).toList(),
      'zip_code': zipCode,
      'number': number,
      'complement': complement,
      'cpf_cnpj': cpfCnpj,
    };
  }

  factory CustomerModel.fromMap(Map<String, dynamic> map) {
    return CustomerModel(
      id: map['id'],
      email: map['email'],
      name: map['name'],
      notes: map['notes'],
      createdAt: map['created_at'],
      updatedAt: map['updated_at'],
      customVariables: List<CustomVariables>.from(
          map['custom_variables']?.map((x) => CustomVariables.fromMap(x))),
      zipCode: map['zip_code'],
      number: map['number'] != null
          ? map['number'] is String
              ? int.parse(map['number'])
              : map['number']
          : null,
      complement: map['complement'],
      cpfCnpj: map['cpf_cnpj'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerModel.fromJson(String source) =>
      CustomerModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CustomerModel(id: $id, email: $email, name: $name, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt, customVariables: $customVariables, zipCode: $zipCode, number: $number, complement: $complement, cpfCnpj: $cpfCnpj)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CustomerModel &&
        other.id == id &&
        other.email == email &&
        other.name == name &&
        other.notes == notes &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.zipCode == zipCode &&
        other.number == number &&
        other.complement == complement &&
        other.cpfCnpj == cpfCnpj;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        email.hashCode ^
        name.hashCode ^
        notes.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        customVariables.hashCode ^
        zipCode.hashCode ^
        number.hashCode ^
        complement.hashCode ^
        cpfCnpj.hashCode;
  }
}
