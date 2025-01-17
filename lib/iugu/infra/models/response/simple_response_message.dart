import 'dart:convert';

class SimpleResponseMessage {
  /// Result of request

  bool success;
  SimpleResponseMessage({
    required this.success,
  });

  SimpleResponseMessage copyWith({
    bool? success,
  }) {
    return SimpleResponseMessage(
      success: success ?? this.success,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'success': success,
    };
  }

  factory SimpleResponseMessage.fromMap(Map<String, dynamic> map) {
    return SimpleResponseMessage(
      success: map['success'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SimpleResponseMessage.fromJson(String source) =>
      SimpleResponseMessage.fromMap(json.decode(source));

  @override
  String toString() => 'SimpleResponseMessage(success: $success)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SimpleResponseMessage && other.success == success;
  }

  @override
  int get hashCode => success.hashCode;
}
