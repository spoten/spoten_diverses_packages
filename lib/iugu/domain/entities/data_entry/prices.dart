import 'dart:convert';

class Prices {
  /// Moeda do Preço (Somente "BRL" por enquanto)
  String? currency;

  /// Preço do Plano em Centavos
  int? valueCents;

  Prices({
    this.currency,
    this.valueCents,
  });

  Prices copyWith({
    String? currency,
    int? valueCents,
  }) {
    return Prices(
      currency: currency ?? this.currency,
      valueCents: valueCents ?? this.valueCents,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'currency': currency,
      'value_cents': valueCents,
    };
  }

  factory Prices.fromMap(Map<String, dynamic> map) {
    return Prices(
      currency: map['currency'],
      valueCents: map['value_cents'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Prices.fromJson(String source) => Prices.fromMap(json.decode(source));

  @override
  String toString() => 'Prices(currency: $currency, value_cents: $valueCents)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Prices &&
        other.currency == currency &&
        other.valueCents == valueCents;
  }

  @override
  int get hashCode => currency.hashCode ^ valueCents.hashCode;
}
