import 'dart:convert';

class CustomVariables {
  String? name;
  String? value;
  CustomVariables({
    this.name,
    this.value,
  });

  CustomVariables copyWith({
    String? name,
    String? value,
  }) {
    return CustomVariables(
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'value': value,
    };
  }

  factory CustomVariables.fromMap(Map<String, dynamic> map) {
    return CustomVariables(
      name: map['name'],
      value: map['value'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomVariables.fromJson(String source) =>
      CustomVariables.fromMap(json.decode(source));

  @override
  String toString() => 'CustomVariables(name: $name, value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CustomVariables &&
        other.name == name &&
        other.value == value;
  }

  @override
  int get hashCode => name.hashCode ^ value.hashCode;
}
