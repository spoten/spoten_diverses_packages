import 'dart:convert';

class TransfersReportResponseMessage {
  List<TransferSentInfo> transfersSent;

  List<TransferReceivedInfo> transfersReceived;

  TransfersReportResponseMessage({
    required this.transfersSent,
    required this.transfersReceived,
  });

  TransfersReportResponseMessage copyWith({
    List<TransferSentInfo>? transfersSent,
    List<TransferReceivedInfo>? transfersReceived,
  }) {
    return TransfersReportResponseMessage(
      transfersSent: transfersSent ?? this.transfersSent,
      transfersReceived: transfersReceived ?? this.transfersReceived,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'sent': transfersSent.map((x) => x.toMap()).toList(),
      'received': transfersReceived.map((x) => x.toMap()).toList(),
    };
  }

  factory TransfersReportResponseMessage.fromMap(Map<String, dynamic> map) {
    return TransfersReportResponseMessage(
      transfersSent: List<TransferSentInfo>.from(
          map['sent']?.map((x) => TransferSentInfo.fromMap(x))),
      transfersReceived: List<TransferReceivedInfo>.from(
          map['received']?.map((x) => TransferReceivedInfo.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory TransfersReportResponseMessage.fromJson(String source) =>
      TransfersReportResponseMessage.fromMap(json.decode(source));

  @override
  String toString() =>
      'TransfersReportResponseMessage(transfersSent: $transfersSent, transfersReceived: $transfersReceived)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TransfersReportResponseMessage;
  }

  @override
  int get hashCode => transfersSent.hashCode ^ transfersReceived.hashCode;
}

class TransferReceivedInfo {
  int amountInCents;

  String amountLocalized;

  DateTime createdAt;

  String transferId;

  AccountInfo sender;

  TransferReceivedInfo({
    required this.amountInCents,
    required this.amountLocalized,
    required this.createdAt,
    required this.transferId,
    required this.sender,
  });

  TransferReceivedInfo copyWith({
    int? amountInCents,
    String? amountLocalized,
    DateTime? createdAt,
    String? transferId,
    AccountInfo? sender,
  }) {
    return TransferReceivedInfo(
      amountInCents: amountInCents ?? this.amountInCents,
      amountLocalized: amountLocalized ?? this.amountLocalized,
      createdAt: createdAt ?? this.createdAt,
      transferId: transferId ?? this.transferId,
      sender: sender ?? this.sender,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'amount_cents': amountInCents,
      'amount_localized': amountLocalized,
      'created_at': createdAt.millisecondsSinceEpoch,
      'id': transferId,
      'sender': sender.toMap(),
    };
  }

  factory TransferReceivedInfo.fromMap(Map<String, dynamic> map) {
    return TransferReceivedInfo(
      amountInCents: map['amount_cents'],
      amountLocalized: map['amount_localized'],
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['created_at']),
      transferId: map['sender'],
      sender: AccountInfo.fromMap(map['sender']),
    );
  }

  String toJson() => json.encode(toMap());

  factory TransferReceivedInfo.fromJson(String source) =>
      TransferReceivedInfo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TransferReceivedInfo(amountInCents: $amountInCents, amountLocalized: $amountLocalized, createdAt: $createdAt, transferId: $transferId, sender: $sender)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TransferReceivedInfo &&
        other.amountInCents == amountInCents &&
        other.amountLocalized == amountLocalized &&
        other.createdAt == createdAt &&
        other.transferId == transferId &&
        other.sender == sender;
  }

  @override
  int get hashCode {
    return amountInCents.hashCode ^
        amountLocalized.hashCode ^
        createdAt.hashCode ^
        transferId.hashCode ^
        sender.hashCode;
  }
}

class TransferSentInfo {
  int amountInCents;

  String amountLocalized;

  DateTime createdAt;

  String transferId;

  AccountInfo receiver;

  TransferSentInfo({
    required this.amountInCents,
    required this.amountLocalized,
    required this.createdAt,
    required this.transferId,
    required this.receiver,
  });

  TransferSentInfo copyWith({
    int? amountInCents,
    String? amountLocalized,
    DateTime? createdAt,
    String? transferId,
    AccountInfo? receiver,
  }) {
    return TransferSentInfo(
      amountInCents: amountInCents ?? this.amountInCents,
      amountLocalized: amountLocalized ?? this.amountLocalized,
      createdAt: createdAt ?? this.createdAt,
      transferId: transferId ?? this.transferId,
      receiver: receiver ?? this.receiver,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'amount_cents': amountInCents,
      'amount_localized': amountLocalized,
      'created_at': createdAt.millisecondsSinceEpoch,
      'id': transferId,
      'receiver': receiver.toMap(),
    };
  }

  factory TransferSentInfo.fromMap(Map<String, dynamic> map) {
    return TransferSentInfo(
      amountInCents: map['amount_cents'],
      amountLocalized: map['amount_localized'],
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['created_at']),
      transferId: map['id'],
      receiver: AccountInfo.fromMap(map['receiver']),
    );
  }

  String toJson() => json.encode(toMap());

  factory TransferSentInfo.fromJson(String source) =>
      TransferSentInfo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TransferSentInfo(amountInCents: $amountInCents, amountLocalized: $amountLocalized, createdAt: $createdAt, transferId: $transferId, receiver: $receiver)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TransferSentInfo &&
        other.amountInCents == amountInCents &&
        other.amountLocalized == amountLocalized &&
        other.createdAt == createdAt &&
        other.transferId == transferId &&
        other.receiver == receiver;
  }

  @override
  int get hashCode {
    return amountInCents.hashCode ^
        amountLocalized.hashCode ^
        createdAt.hashCode ^
        transferId.hashCode ^
        receiver.hashCode;
  }
}

class AccountInfo {
  String accountId;
  String name;

  AccountInfo({
    required this.accountId,
    required this.name,
  });

  AccountInfo copyWith({
    String? accountId,
    String? name,
  }) {
    return AccountInfo(
      accountId: accountId ?? this.accountId,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': accountId,
      'name': name,
    };
  }

  factory AccountInfo.fromMap(Map<String, dynamic> map) {
    return AccountInfo(
      accountId: map['id'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AccountInfo.fromJson(String source) =>
      AccountInfo.fromMap(json.decode(source));

  @override
  String toString() => 'AccountInfo(accountId: $accountId, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AccountInfo &&
        other.accountId == accountId &&
        other.name == name;
  }

  @override
  int get hashCode => accountId.hashCode ^ name.hashCode;
}
