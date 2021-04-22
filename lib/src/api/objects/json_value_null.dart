import '../tdapi.dart';

/// Represents a null JSON value
class JsonValueNull extends JsonValue {
  const JsonValueNull();

  static const String CONSTRUCTOR = 'jsonValueNull';

  static JsonValueNull? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const JsonValueNull();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
