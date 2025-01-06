// ignore_for_file: unintended_html_in_doc_comment

import 'dart:convert';

/// <summary>
/// Representa um item de uma fatura
/// </summary>
class InvoiceItem {
  /// <summary>
  /// Descrição do Item
  /// </summary>
  String description;

  /// <summary>
  /// Quantidade
  /// </summary>
  int quantity;

  /// <summary>
  /// Preço em Centavos. Valores negativos entram como desconto no total
  /// </summary>
  int priceCents;

  InvoiceItem({
    this.description = '',
    this.quantity = 0,
    this.priceCents = 0,
  });

  InvoiceItem copyWith({
    String? description,
    int? quantity,
    int? priceCents,
  }) {
    return InvoiceItem(
      description: description ?? this.description,
      quantity: quantity ?? this.quantity,
      priceCents: priceCents ?? this.priceCents,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'quantity': quantity,
      'price_cents': priceCents,
    };
  }

  factory InvoiceItem.fromMap(Map<String, dynamic> map) {
    return InvoiceItem(
      description: map['description'],
      quantity: map['quantity'],
      priceCents: map['price_cents'],
    );
  }

  String toJson() => json.encode(toMap());

  factory InvoiceItem.fromJson(String source) =>
      InvoiceItem.fromMap(json.decode(source));

  @override
  String toString() =>
      'InvoiceItem(description: $description, quantity: $quantity, priceCents: $priceCents)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is InvoiceItem &&
        other.description == description &&
        other.quantity == quantity &&
        other.priceCents == priceCents;
  }

  @override
  int get hashCode =>
      description.hashCode ^ quantity.hashCode ^ priceCents.hashCode;
}
