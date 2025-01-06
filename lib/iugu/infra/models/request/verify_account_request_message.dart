import 'dart:convert';

import '../../../domain/entities/account_model.dart';

class VerifyAccountRequestMessage {
  /// Informações da conta a ser verificada
  /// Obs: Essas informações serão adicionadas as informações da conta
  AccountModel? data;

  /// Habilitar a rerificação automática dos dados bancários
  bool? automaticValidation;

  VerifyAccountRequestMessage({
    this.data,
    this.automaticValidation,
  });

  VerifyAccountRequestMessage copyWith({
    AccountModel? data,
    bool? automaticValidation,
  }) {
    return VerifyAccountRequestMessage(
      data: data ?? this.data,
      automaticValidation: automaticValidation ?? this.automaticValidation,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'data': data?.toMap(),
      'automatic_validation': automaticValidation,
    };
  }

  factory VerifyAccountRequestMessage.fromMap(Map<String, dynamic> map) {
    return VerifyAccountRequestMessage(
      data: AccountModel.fromMap(map['data']),
      automaticValidation: map['automatic_validation'],
    );
  }

  String toJson() => json.encode(toMap());

  factory VerifyAccountRequestMessage.fromJson(String source) =>
      VerifyAccountRequestMessage.fromMap(json.decode(source));

  @override
  String toString() =>
      'VerifyAccountRequestMessage(data: $data, automaticValidation: $automaticValidation)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VerifyAccountRequestMessage &&
        other.data == data &&
        other.automaticValidation == automaticValidation;
  }

  @override
  int get hashCode => data.hashCode ^ automaticValidation.hashCode;
}
