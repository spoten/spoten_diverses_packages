import 'dart:convert';

class CreditCard {
  /// Número do Cartão de Crédito
  int? number;

  /// CVV do Cartão de Crédito
  int? verificationValue;

  /// Nome do Cliente como está no Cartão
  String? firstName;

  /// Sobrenome do Cliente como está no Cartão
  String? lastName;

  /// Mês de Vencimento no Formato MM (Ex: 01, 02, 12)
  int? month;

  /// Ano de Vencimento no Formato YYYY (2014, 2015, 2016)
  int? year;

  CreditCard({
    this.number,
    this.verificationValue,
    this.firstName,
    this.lastName,
    this.month,
    this.year,
  });

  CreditCard copyWith({
    int? number,
    int? verificationValue,
    String? firstName,
    String? lastName,
    int? month,
    int? year,
  }) {
    return CreditCard(
      number: number ?? this.number,
      verificationValue: verificationValue ?? this.verificationValue,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      month: month ?? this.month,
      year: year ?? this.year,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'number': number,
      'verification_value': verificationValue,
      'first_name': firstName,
      'last_name': lastName,
      'month': month,
      'year': year,
    };
  }

  factory CreditCard.fromMap(Map<String, dynamic> map) {
    return CreditCard(
      number: map['number'],
      verificationValue: map['verification_value'],
      firstName: map['first_name'],
      lastName: map['last_name'],
      month: map['month'],
      year: map['year'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CreditCard.fromJson(String source) =>
      CreditCard.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CreditCard(number: $number, verification_value: $verificationValue, first_name: $firstName, last_name: $lastName, month: $month, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CreditCard &&
        other.number == number &&
        other.verificationValue == verificationValue &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.month == month &&
        other.year == year;
  }

  @override
  int get hashCode {
    return number.hashCode ^
        verificationValue.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        month.hashCode ^
        year.hashCode;
  }
}
