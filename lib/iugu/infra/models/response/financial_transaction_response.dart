import 'dart:convert';

class FinancialTransactionResponse {
  String totalItems;

  List<Items> items;

  List<TransactionsResponse> transactions;

  Total total;

  FinancialTransactionResponse({
    required this.totalItems,
    required this.items,
    required this.transactions,
    required this.total,
  });

  FinancialTransactionResponse copyWith({
    String? totalItems,
    List<Items>? items,
    List<TransactionsResponse>? transactions,
    Total? total,
  }) {
    return FinancialTransactionResponse(
      totalItems: totalItems ?? this.totalItems,
      items: items ?? this.items,
      transactions: transactions ?? this.transactions,
      total: total ?? this.total,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'totalItems': totalItems,
      'items': items.map((x) => x.toMap()).toList(),
      'transactions': transactions.map((x) => x.toMap()).toList(),
      'total': total.toMap(),
    };
  }

  factory FinancialTransactionResponse.fromMap(Map<String, dynamic> map) {
    return FinancialTransactionResponse(
      totalItems: map['totalItems'],
      items: List<Items>.from(map['items']?.map((x) => Items.fromMap(x))),
      transactions: List<TransactionsResponse>.from(
          map['transactions']?.map((x) => TransactionsResponse.fromMap(x))),
      total: Total.fromMap(map['total']),
    );
  }

  String toJson() => json.encode(toMap());

  factory FinancialTransactionResponse.fromJson(String source) =>
      FinancialTransactionResponse.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FinancialTransactionResponse(totalItems: $totalItems, items: $items, transactions: $transactions, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FinancialTransactionResponse &&
        other.totalItems == totalItems &&
        other.total == total;
  }

  @override
  int get hashCode {
    return totalItems.hashCode ^
        items.hashCode ^
        transactions.hashCode ^
        total.hashCode;
  }
}

class Total {
  String advancedValue;

  String advanceFee;

  String receivedValue;

  Total({
    required this.advancedValue,
    required this.advanceFee,
    required this.receivedValue,
  });

  Total copyWith({
    String? advancedValue,
    String? advanceFee,
    String? receivedValue,
  }) {
    return Total(
      advancedValue: advancedValue ?? this.advancedValue,
      advanceFee: advanceFee ?? this.advanceFee,
      receivedValue: receivedValue ?? this.receivedValue,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'advanced_value': advancedValue,
      'advance_fee': advanceFee,
      'received_value': receivedValue,
    };
  }

  factory Total.fromMap(Map<String, dynamic> map) {
    return Total(
      advancedValue: map['advanced_value'],
      advanceFee: map['advance_fee'],
      receivedValue: map['received_value'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Total.fromJson(String source) => Total.fromMap(json.decode(source));

  @override
  String toString() =>
      'Total(advancedValue: $advancedValue, advanceFee: $advanceFee, receivedValue: $receivedValue)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Total &&
        other.advancedValue == advancedValue &&
        other.advanceFee == advanceFee &&
        other.receivedValue == receivedValue;
  }

  @override
  int get hashCode =>
      advancedValue.hashCode ^ advanceFee.hashCode ^ receivedValue.hashCode;
}

class TransactionsResponse extends Items {
  String advancedValue;

  String advanceFee;

  String receivedValue;

  TransactionsResponse({
    required this.advancedValue,
    required this.advanceFee,
    required this.receivedValue,
  });

  @override
  Map<String, dynamic> toMap() {
    return {
      'advancedValue': advancedValue,
      'advanceFee': advanceFee,
      'receivedValue': receivedValue,
    };
  }

  factory TransactionsResponse.fromMap(Map<String, dynamic> map) {
    return TransactionsResponse(
      advancedValue: map['advancedValue'],
      advanceFee: map['advanceFee'],
      receivedValue: map['receivedValue'],
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory TransactionsResponse.fromJson(String source) =>
      TransactionsResponse.fromMap(json.decode(source));

  @override
  String toString() =>
      'Transactions(advancedValue: $advancedValue, advanceFee: $advanceFee, receivedValue: $receivedValue)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TransactionsResponse &&
        other.advancedValue == advancedValue &&
        other.advanceFee == advanceFee &&
        other.receivedValue == receivedValue;
  }

  @override
  int get hashCode =>
      advancedValue.hashCode ^ advanceFee.hashCode ^ receivedValue.hashCode;
}

class Items {
  String? id;

  String? description;

  String? scheduledDate;

  String? invoiceId;

  String? customerRef;

  String? total;

  String? taxes;

  String? clientShare;

  String? commission;

  String? numberOfInstallments;

  String? installment;

  Items({
    this.id,
    this.description,
    this.scheduledDate,
    this.invoiceId,
    this.customerRef,
    this.total,
    this.taxes,
    this.clientShare,
    this.commission,
    this.numberOfInstallments,
    this.installment,
  });

  Items copyWith({
    String? id,
    String? description,
    String? scheduledDate,
    String? invoiceId,
    String? customerRef,
    String? total,
    String? taxes,
    String? clientShare,
    String? commission,
    String? numberOfInstallments,
    String? installment,
  }) {
    return Items(
      id: id ?? this.id,
      description: description ?? this.description,
      scheduledDate: scheduledDate ?? this.scheduledDate,
      invoiceId: invoiceId ?? this.invoiceId,
      customerRef: customerRef ?? this.customerRef,
      total: total ?? this.total,
      taxes: taxes ?? this.taxes,
      clientShare: clientShare ?? this.clientShare,
      commission: commission ?? this.commission,
      numberOfInstallments: numberOfInstallments ?? this.numberOfInstallments,
      installment: installment ?? this.installment,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'description': description,
      'scheduled_date': scheduledDate,
      'invoice_id': invoiceId,
      'customer_ref': customerRef,
      'total': total,
      'taxes': taxes,
      'client_share': clientShare,
      'commission': commission,
      'number_of_installments': numberOfInstallments,
      'installment': installment,
    };
  }

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      id: map['id'],
      description: map['description'],
      scheduledDate: map['scheduled_date'],
      invoiceId: map['invoice_id'],
      customerRef: map['customer_ref'],
      total: map['total'],
      taxes: map['taxes'],
      clientShare: map['client_share'],
      commission: map['commission'],
      numberOfInstallments: map['number_of_installments'],
      installment: map['installment'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Items.fromJson(String source) => Items.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Items(id: $id, description: $description, scheduledDate: $scheduledDate, invoiceId: $invoiceId, customerRef: $customerRef, total: $total, taxes: $taxes, clientShare: $clientShare, commission: $commission, numberOfInstallments: $numberOfInstallments, installment: $installment)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Items &&
        other.id == id &&
        other.description == description &&
        other.scheduledDate == scheduledDate &&
        other.invoiceId == invoiceId &&
        other.customerRef == customerRef &&
        other.total == total &&
        other.taxes == taxes &&
        other.clientShare == clientShare &&
        other.commission == commission &&
        other.numberOfInstallments == numberOfInstallments &&
        other.installment == installment;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        description.hashCode ^
        scheduledDate.hashCode ^
        invoiceId.hashCode ^
        customerRef.hashCode ^
        total.hashCode ^
        taxes.hashCode ^
        clientShare.hashCode ^
        commission.hashCode ^
        numberOfInstallments.hashCode ^
        installment.hashCode;
  }
}
