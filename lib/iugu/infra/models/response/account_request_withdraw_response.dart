import 'dart:convert';

/// Resposta da Api de pedido de saque
class AccountRequestWithdrawResponse {
  /// Id que identifica o pedido de saque efetuado
  String operationId;

  /// Valor solicitado para saque
  double withdrawValue;

  AccountRequestWithdrawResponse({
    required this.operationId,
    required this.withdrawValue,
  });

  AccountRequestWithdrawResponse copyWith({
    String? operationId,
    double? withdrawValue,
  }) {
    return AccountRequestWithdrawResponse(
      operationId: operationId ?? this.operationId,
      withdrawValue: withdrawValue ?? this.withdrawValue,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': operationId,
      'amount': withdrawValue,
    };
  }

  factory AccountRequestWithdrawResponse.fromMap(Map<String, dynamic> map) {
    return AccountRequestWithdrawResponse(
      operationId: map['id'],
      withdrawValue: map['amount'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AccountRequestWithdrawResponse.fromJson(String source) =>
      AccountRequestWithdrawResponse.fromMap(json.decode(source));

  @override
  String toString() =>
      'AccountRequestWithdrawResponse(operationId: $operationId, withdrawValue: $withdrawValue)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AccountRequestWithdrawResponse &&
        other.operationId == operationId &&
        other.withdrawValue == withdrawValue;
  }

  @override
  int get hashCode => operationId.hashCode ^ withdrawValue.hashCode;
}
