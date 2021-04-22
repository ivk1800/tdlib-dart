import '../tdapi.dart';

/// Represents a boolean JSON value
class JsonValueBoolean extends JsonValue {
  JsonValueBoolean({required this.value});

  /// [value] The value
  final bool value;

  static const String CONSTRUCTOR = 'jsonValueBoolean';

  static JsonValueBoolean? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonValueBoolean(value: json['value']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'value': this.value, '@type': CONSTRUCTOR};
}
