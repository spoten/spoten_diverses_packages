import 'dart:convert';

class MarketplaceAccountsResponse {
  int totalItems;

  List<MarketPlaceAccountItem> accounts;

  MarketplaceAccountsResponse({
    required this.totalItems,
    required this.accounts,
  });

  MarketplaceAccountsResponse copyWith({
    int? totalItems,
    List<MarketPlaceAccountItem>? accounts,
  }) {
    return MarketplaceAccountsResponse(
      totalItems: totalItems ?? this.totalItems,
      accounts: accounts ?? this.accounts,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'totalItems': totalItems,
      'items': accounts.map((x) => x.toMap()).toList(),
    };
  }

  factory MarketplaceAccountsResponse.fromMap(Map<String, dynamic> map) {
    return MarketplaceAccountsResponse(
      totalItems: map['totalItems'],
      accounts: List<MarketPlaceAccountItem>.from(
          map['items']?.map((x) => MarketPlaceAccountItem.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory MarketplaceAccountsResponse.fromJson(String source) =>
      MarketplaceAccountsResponse.fromMap(json.decode(source));

  @override
  String toString() =>
      'MarketplaceAccoutsResponse(totalItems: $totalItems, accounts: $accounts)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MarketplaceAccountsResponse &&
        other.totalItems == totalItems;
  }

  @override
  int get hashCode => totalItems.hashCode ^ accounts.hashCode;
}

class MarketPlaceAccountItem {
  String id;
  String name;
  bool verified;

  MarketPlaceAccountItem({
    required this.id,
    required this.name,
    this.verified = false,
  });

  MarketPlaceAccountItem copyWith({
    String? id,
    String? name,
    bool? verified,
  }) {
    return MarketPlaceAccountItem(
      id: id ?? this.id,
      name: name ?? this.name,
      verified: verified ?? this.verified,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'verified': verified,
    };
  }

  factory MarketPlaceAccountItem.fromMap(Map<String, dynamic> map) {
    return MarketPlaceAccountItem(
      id: map['id'],
      name: map['name'],
      verified: map['verified'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MarketPlaceAccountItem.fromJson(String source) =>
      MarketPlaceAccountItem.fromMap(json.decode(source));

  @override
  String toString() =>
      'MarketPlaceAccountItem(id: $id, name: $name, verified: $verified)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MarketPlaceAccountItem &&
        other.id == id &&
        other.name == name &&
        other.verified == verified;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ verified.hashCode;
}
