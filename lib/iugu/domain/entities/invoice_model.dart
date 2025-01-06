import 'dart:convert';

import 'data_entry/custom_variables.dart';
import 'data_entry/logs.dart';

class InvoiceModel {
  String id;
  String dueDate;
  String? currency;
  Object? discountCents;
  String? email;
  int? itemsTotalCents;
  Object? notificationUrl;
  Object? returnUrl;
  String? status;
  Object? taxCents;
  String? updatedAt;
  int? totalCents;
  String? totalPaid;
  int? totalPaidCents;
  Object? paidAt;
  int? paidCents;
  String? paid;
  String? secureId;
  String? secureUrl;
  Object? customerId;
  Object? userId;
  String? total;
  String? taxesPaid;
  Object? interest;
  Object? discount;
  String? createdAt;
  Object? refundable;
  Object? installments;
  BankSlip? bankSlip;
  List<Item>? items;
  List<Variable>? variables;
  List<CustomVariables>? customVariables;
  bool? earlyPaymentDiscount;
  List<EarlyPaymentDiscounts>? earlyPaymentDiscounts;
  List<Logs>? logs;

  InvoiceModel({
    required this.id,
    this.dueDate = '',
    this.currency,
    this.discountCents,
    this.email,
    this.itemsTotalCents,
    this.notificationUrl,
    this.returnUrl,
    this.status,
    this.taxCents,
    this.updatedAt,
    this.totalCents,
    this.totalPaid,
    this.totalPaidCents,
    this.paidAt,
    this.paidCents,
    this.paid,
    this.secureId,
    this.secureUrl,
    this.customerId,
    this.userId,
    this.total,
    this.taxesPaid,
    this.interest,
    this.discount,
    this.createdAt,
    this.refundable,
    this.installments,
    this.bankSlip,
    this.items,
    this.variables,
    this.customVariables,
    this.earlyPaymentDiscount,
    this.earlyPaymentDiscounts,
    this.logs,
  });

  InvoiceModel copyWith({
    String? id,
    String? dueDate,
    String? currency,
    Object? discountCents,
    String? email,
    int? itemsTotalCents,
    Object? notificationUrl,
    Object? returnUrl,
    String? status,
    Object? taxCents,
    String? updatedAt,
    int? totalCents,
    String? totalPaid,
    int? totalPaidCents,
    Object? paidAt,
    int? paidCents,
    String? paid,
    String? secureId,
    String? secureUrl,
    Object? customerId,
    Object? userId,
    String? total,
    String? taxesPaid,
    Object? interest,
    Object? discount,
    String? createdAt,
    Object? refundable,
    Object? installments,
    BankSlip? bankSlip,
    List<Item>? items,
    List<Variable>? variables,
    List<CustomVariables>? customVariables,
    bool? earlyPaymentDiscount,
    List<EarlyPaymentDiscounts>? earlyPaymentDiscounts,
    List<Logs>? logs,
  }) {
    return InvoiceModel(
      id: id ?? this.id,
      dueDate: dueDate ?? this.dueDate,
      currency: currency ?? this.currency,
      discountCents: discountCents ?? this.discountCents,
      email: email ?? this.email,
      itemsTotalCents: itemsTotalCents ?? this.itemsTotalCents,
      notificationUrl: notificationUrl ?? this.notificationUrl,
      returnUrl: returnUrl ?? this.returnUrl,
      status: status ?? this.status,
      taxCents: taxCents ?? this.taxCents,
      updatedAt: updatedAt ?? this.updatedAt,
      totalCents: totalCents ?? this.totalCents,
      totalPaid: totalPaid ?? this.totalPaid,
      totalPaidCents: totalPaidCents ?? this.totalPaidCents,
      paidAt: paidAt ?? this.paidAt,
      paidCents: paidCents ?? this.paidCents,
      paid: paid ?? this.paid,
      secureId: secureId ?? this.secureId,
      secureUrl: secureUrl ?? this.secureUrl,
      customerId: customerId ?? this.customerId,
      userId: userId ?? this.userId,
      total: total ?? this.total,
      taxesPaid: taxesPaid ?? this.taxesPaid,
      interest: interest ?? this.interest,
      discount: discount ?? this.discount,
      createdAt: createdAt ?? this.createdAt,
      refundable: refundable ?? this.refundable,
      installments: installments ?? this.installments,
      bankSlip: bankSlip ?? this.bankSlip,
      items: items ?? this.items,
      variables: variables ?? this.variables,
      customVariables: customVariables ?? this.customVariables,
      earlyPaymentDiscount: earlyPaymentDiscount ?? this.earlyPaymentDiscount,
      earlyPaymentDiscounts:
          earlyPaymentDiscounts ?? this.earlyPaymentDiscounts,
      logs: logs ?? this.logs,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'due_date': dueDate,
      'currency': currency,
      'discount_cents': discountCents,
      'email': email,
      'items_total_cents': itemsTotalCents,
      'notification_url': notificationUrl,
      'return_url': returnUrl,
      'status': status,
      'tax_cents': taxCents,
      'updated_at': updatedAt,
      'total_cents': totalCents,
      'total_paid': totalPaid,
      'total_paid_cents': totalPaidCents,
      'paid_at': paidAt,
      'paid_cents': paidCents,
      'paid': paid,
      'secure_id': secureId,
      'secure_url': secureUrl,
      'customer_id': customerId,
      'user_id': userId,
      'total': total,
      'taxes_paid': taxesPaid,
      'interest': interest,
      'discount': discount,
      'created_at': createdAt,
      'refundable': refundable,
      'installments': installments,
      'bank_slip': bankSlip,
      'items': items?.map((x) => x.toMap()).toList(),
      'variables': variables?.map((x) => x.toMap()).toList(),
      'custom_variables': customVariables?.map((x) => x.toMap()).toList(),
      'early_payment_discount': earlyPaymentDiscount,
      'early_payment_discounts':
          earlyPaymentDiscounts?.map((x) => x.toMap()).toList(),
      'logs': logs?.map((x) => x.toMap()).toList(),
    };
  }

  factory InvoiceModel.fromMap(Map<String, dynamic> map) {
    return InvoiceModel(
      id: map['id'],
      dueDate: map['due_date'],
      currency: map['currency'],
      discountCents: map['discount_cents'],
      email: map['email'],
      itemsTotalCents: map['items_total_cents'],
      notificationUrl: map['notification_url'],
      returnUrl: map['return_url'],
      status: map['status'],
      taxCents: map['tax_cents'],
      updatedAt: map['updated_at'],
      totalCents: map['total_cents'],
      totalPaid: map['total_paid'],
      totalPaidCents: map['total_paid_cents'],
      paidAt: map['paid_at'],
      paidCents: map['paid_cents'],
      paid: map['paid'],
      secureId: map['secure_id'],
      secureUrl: map['secure_url'],
      customerId: map['customer_id'],
      userId: map['user_id'],
      total: map['total'],
      taxesPaid: map['taxes_paid'],
      interest: map['interest'],
      discount: map['discount'],
      createdAt: map['created_at'],
      refundable: map['refundable'],
      installments: map['installments'],
      bankSlip:
          map['bank_slip'] != null ? BankSlip.fromMap(map['bank_slip']) : null,
      items: List<Item>.from(map['items']?.map((x) => Item.fromMap(x))),
      variables: List<Variable>.from(
          map['variables']?.map((x) => Variable.fromMap(x))),
      customVariables: List<CustomVariables>.from(
          map['custom_variables']?.map((x) => CustomVariables.fromMap(x))),
      earlyPaymentDiscount: map['early_payment_discount'],
      earlyPaymentDiscounts: map['early_payment_discounts'] != null
          ? List<EarlyPaymentDiscounts>.from(map['early_payment_discounts']
              ?.map((x) => EarlyPaymentDiscounts.fromMap(x)))
          : [],
      logs: List<Logs>.from(map['logs']?.map((x) => Logs.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory InvoiceModel.fromJson(String source) =>
      InvoiceModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'InvoiceModel(id: $id, due_date: $dueDate, currency: $currency, discount_cents: $discountCents, email: $email, items_total_cents: $itemsTotalCents, notification_url: $notificationUrl, return_url: $returnUrl, status: $status, tax_cents: $taxCents, updated_at: $updatedAt, total_cents: $totalCents, total_paid: $totalPaid, total_paid_cents: $totalPaidCents, paid_at: $paidAt, paid_cents: $paidCents, paid: $paid, secure_id: $secureId, secure_url: $secureUrl, customer_id: $customerId, user_id: $userId, total: $total, taxes_paid: $taxesPaid, interest: $interest, discount: $discount, created_at: $createdAt, refundable: $refundable, installments: $installments, bank_slip: $bankSlip, items: $items, variables: $variables, custom_variables: $customVariables, early_payment_discount: $earlyPaymentDiscount, early_payment_discounts: $earlyPaymentDiscounts, logs: $logs)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is InvoiceModel &&
        other.id == id &&
        other.dueDate == dueDate &&
        other.currency == currency &&
        other.discountCents == discountCents &&
        other.email == email &&
        other.itemsTotalCents == itemsTotalCents &&
        other.notificationUrl == notificationUrl &&
        other.returnUrl == returnUrl &&
        other.status == status &&
        other.taxCents == taxCents &&
        other.updatedAt == updatedAt &&
        other.totalCents == totalCents &&
        other.totalPaid == totalPaid &&
        other.totalPaidCents == totalPaidCents &&
        other.paidAt == paidAt &&
        other.paidCents == paidCents &&
        other.paid == paid &&
        other.secureId == secureId &&
        other.secureUrl == secureUrl &&
        other.customerId == customerId &&
        other.userId == userId &&
        other.total == total &&
        other.taxesPaid == taxesPaid &&
        other.interest == interest &&
        other.discount == discount &&
        other.createdAt == createdAt &&
        other.refundable == refundable &&
        other.installments == installments &&
        other.bankSlip == bankSlip &&
        other.earlyPaymentDiscount == earlyPaymentDiscount;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        dueDate.hashCode ^
        currency.hashCode ^
        discountCents.hashCode ^
        email.hashCode ^
        itemsTotalCents.hashCode ^
        notificationUrl.hashCode ^
        returnUrl.hashCode ^
        status.hashCode ^
        taxCents.hashCode ^
        updatedAt.hashCode ^
        totalCents.hashCode ^
        totalPaid.hashCode ^
        totalPaidCents.hashCode ^
        paidAt.hashCode ^
        paidCents.hashCode ^
        paid.hashCode ^
        secureId.hashCode ^
        secureUrl.hashCode ^
        customerId.hashCode ^
        userId.hashCode ^
        total.hashCode ^
        taxesPaid.hashCode ^
        interest.hashCode ^
        discount.hashCode ^
        createdAt.hashCode ^
        refundable.hashCode ^
        installments.hashCode ^
        bankSlip.hashCode ^
        items.hashCode ^
        variables.hashCode ^
        customVariables.hashCode ^
        earlyPaymentDiscount.hashCode ^
        earlyPaymentDiscounts.hashCode ^
        logs.hashCode;
  }
}

class BankSlip {
  String digitableLine;
  String barcodeData;
  String barcode;

  BankSlip({
    this.digitableLine = '',
    this.barcodeData = '',
    this.barcode = '',
  });

  BankSlip copyWith({
    String? digitableLine,
    String? barcodeData,
    String? barcode,
  }) {
    return BankSlip(
      digitableLine: digitableLine ?? this.digitableLine,
      barcodeData: barcodeData ?? this.barcodeData,
      barcode: barcode ?? this.barcode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'digitable_line': digitableLine,
      'barcode_data': barcodeData,
      'barcode': barcode,
    };
  }

  factory BankSlip.fromMap(Map<String, dynamic> map) {
    return BankSlip(
      digitableLine: map['digitable_line'],
      barcodeData: map['barcode_data'],
      barcode: map['barcode'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BankSlip.fromJson(String source) =>
      BankSlip.fromMap(json.decode(source));

  @override
  String toString() =>
      'BankSlip(digitable_line: $digitableLine, barcode_data: $barcodeData, barcode: $barcode)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BankSlip &&
        other.digitableLine == digitableLine &&
        other.barcodeData == barcodeData &&
        other.barcode == barcode;
  }

  @override
  int get hashCode =>
      digitableLine.hashCode ^ barcodeData.hashCode ^ barcode.hashCode;
}

class Item {
  String? id;
  String? description;
  int? priceCents;
  int? quantity;
  String? createdAt;
  String? updatedAt;
  String? price;
  bool? destroy;

  Item({
    this.id,
    this.description,
    this.priceCents,
    this.quantity,
    this.createdAt,
    this.updatedAt,
    this.price,
    this.destroy,
  });

  Item copyWith({
    String? id,
    String? description,
    int? priceCents,
    int? quantity,
    String? createdAt,
    String? updatedAt,
    String? price,
    bool? destroy,
  }) {
    return Item(
      id: id ?? this.id,
      description: description ?? this.description,
      priceCents: priceCents ?? this.priceCents,
      quantity: quantity ?? this.quantity,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      price: price ?? this.price,
      destroy: destroy ?? this.destroy,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'description': description,
      'price_cents': priceCents,
      'quantity': quantity,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'price': price,
      '_destroy': destroy,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      description: map['description'],
      priceCents: map['price_cents'],
      quantity: map['quantity'],
      createdAt: map['created_at'],
      updatedAt: map['updated_at'],
      price: map['price'],
      destroy: map['_destroy'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, description: $description, price_cents: $priceCents, quantity: $quantity, created_at: $createdAt, updated_at: $updatedAt, price: $price, destroy: $destroy)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.description == description &&
        other.priceCents == priceCents &&
        other.quantity == quantity &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.price == price &&
        other.destroy == destroy;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        description.hashCode ^
        priceCents.hashCode ^
        quantity.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        price.hashCode ^
        destroy.hashCode;
  }
}

class Variable {
  String? id;
  String? variable;
  String? value;

  Variable({
    this.id,
    this.variable,
    this.value,
  });

  Variable copyWith({
    String? id,
    String? variable,
    String? value,
  }) {
    return Variable(
      id: id ?? this.id,
      variable: variable ?? this.variable,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'variable': variable,
      'value': value,
    };
  }

  factory Variable.fromMap(Map<String, dynamic> map) {
    return Variable(
      id: map['id'],
      variable: map['variable'],
      value: map['value'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Variable.fromJson(String source) =>
      Variable.fromMap(json.decode(source));

  @override
  String toString() => 'Variable(id: $id, variable: $variable, value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Variable &&
        other.id == id &&
        other.variable == variable &&
        other.value == value;
  }

  @override
  int get hashCode => id.hashCode ^ variable.hashCode ^ value.hashCode;
}

class InvoiceListModel {
  Facets? facets;
  int? totalItems;
  List<InvoiceModel>? items;

  InvoiceListModel({
    this.facets,
    this.totalItems,
    this.items,
  });

  InvoiceListModel copyWith({
    Facets? facets,
    int? totalItems,
    List<InvoiceModel>? items,
  }) {
    return InvoiceListModel(
      facets: facets ?? this.facets,
      totalItems: totalItems ?? this.totalItems,
      items: items ?? this.items,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'facets': facets?.toMap(),
      'totalItems': totalItems,
      'items': items?.map((x) => x.toMap()).toList(),
    };
  }

  factory InvoiceListModel.fromMap(Map<String, dynamic> map) {
    return InvoiceListModel(
      facets: Facets.fromMap(map['facets']),
      totalItems: map['totalItems'],
      items: List<InvoiceModel>.from(
          map['items']?.map((x) => InvoiceModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory InvoiceListModel.fromJson(String source) =>
      InvoiceListModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'InvoiceListModel(facets: $facets, totalItems: $totalItems, items: $items)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is InvoiceListModel &&
        other.facets == facets &&
        other.totalItems == totalItems;
  }

  @override
  int get hashCode => facets.hashCode ^ totalItems.hashCode ^ items.hashCode;
}

class Term {
  String term;
  int count;

  Term({
    this.term = '',
    this.count = 0,
  });

  Term copyWith({
    String? term,
    int? count,
  }) {
    return Term(
      term: term ?? this.term,
      count: count ?? this.count,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'term': term,
      'count': count,
    };
  }

  factory Term.fromMap(Map<String, dynamic> map) {
    return Term(
      term: map['term'],
      count: map['count'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Term.fromJson(String source) => Term.fromMap(json.decode(source));

  @override
  String toString() => 'Term(term: $term, count: $count)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Term && other.term == term && other.count == count;
  }

  @override
  int get hashCode => term.hashCode ^ count.hashCode;
}

class Status {
  String? type;
  int? missing;
  int? total;
  int? other;
  List<Term>? terms;

  Status({
    this.type,
    this.missing,
    this.total,
    this.other,
    this.terms,
  });

  Status copyWith({
    String? type,
    int? missing,
    int? total,
    int? other,
    List<Term>? terms,
  }) {
    return Status(
      type: type ?? this.type,
      missing: missing ?? this.missing,
      total: total ?? this.total,
      other: other ?? this.other,
      terms: terms ?? this.terms,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '_type': type,
      'missing': missing,
      'total': total,
      'other': other,
      'terms': terms?.map((x) => x.toMap()).toList(),
    };
  }

  factory Status.fromMap(Map<String, dynamic> map) {
    return Status(
      type: map['_type'],
      missing: map['missing'],
      total: map['total'],
      other: map['other'],
      terms: List<Term>.from(map['terms']?.map((x) => Term.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Status.fromJson(String source) => Status.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Status(_type: $type, missing: $missing, total: $total, other: $other, terms: $terms)';
  }

  @override
  // ignore: avoid_renaming_method_parameters
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Status &&
        o.type == type &&
        o.missing == missing &&
        o.total == total &&
        o.other == other;
  }

  @override
  int get hashCode {
    return type.hashCode ^
        missing.hashCode ^
        total.hashCode ^
        other.hashCode ^
        terms.hashCode;
  }
}

class Facets {
  Status? status;

  Facets({
    this.status,
  });

  Facets copyWith({
    Status? status,
  }) {
    return Facets(
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status?.toMap(),
    };
  }

  factory Facets.fromMap(Map<String, dynamic> map) {
    return Facets(
      status: Status.fromMap(map['status']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Facets.fromJson(String source) => Facets.fromMap(json.decode(source));

  @override
  String toString() => 'Facets(status: $status)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Facets && other.status == status;
  }

  @override
  int get hashCode => status.hashCode;
}

class EarlyPaymentDiscounts {
  int? days;
  String? percent;

  EarlyPaymentDiscounts({
    this.days,
    this.percent,
  });

  EarlyPaymentDiscounts copyWith({
    int? days,
    String? percent,
  }) {
    return EarlyPaymentDiscounts(
      days: days ?? this.days,
      percent: percent ?? this.percent,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'days': days,
      'percent': percent,
    };
  }

  factory EarlyPaymentDiscounts.fromMap(Map<String, dynamic> map) {
    return EarlyPaymentDiscounts(
      days: map['days'],
      percent: map['percent'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EarlyPaymentDiscounts.fromJson(String source) =>
      EarlyPaymentDiscounts.fromMap(json.decode(source));

  @override
  String toString() => 'EarlyPaymentDiscounts(days: $days, percent: $percent)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EarlyPaymentDiscounts &&
        other.days == days &&
        other.percent == percent;
  }

  @override
  int get hashCode => days.hashCode ^ percent.hashCode;
}
