import '../tdapi.dart';

/// Represents a numeric JSON value
class JsonValueNumber extends JsonValue {
  JsonValueNumber({required this.value});

  /// [value] The value
  final double value;

  static const String CONSTRUCTOR = 'jsonValueNumber';

  static JsonValueNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonValueNumber(value: json['value']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'value': this.value, '@type': CONSTRUCTOR};
}
