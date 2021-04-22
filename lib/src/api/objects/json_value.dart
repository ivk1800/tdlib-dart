import '../tdapi.dart';

/// Represents a JSON value
abstract class JsonValue extends TdObject {
  const JsonValue();

  static const String CONSTRUCTOR = 'jsonValue';

  /// Inherited by:
  /// [JsonValueNull]
  /// [JsonValueBoolean]
  /// [JsonValueNumber]
  /// [JsonValueString]
  /// [JsonValueArray]
  /// [JsonValueObject]
  static JsonValue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case JsonValueNull.CONSTRUCTOR:
        return JsonValueNull.fromJson(json);
      case JsonValueBoolean.CONSTRUCTOR:
        return JsonValueBoolean.fromJson(json);
      case JsonValueNumber.CONSTRUCTOR:
        return JsonValueNumber.fromJson(json);
      case JsonValueString.CONSTRUCTOR:
        return JsonValueString.fromJson(json);
      case JsonValueArray.CONSTRUCTOR:
        return JsonValueArray.fromJson(json);
      case JsonValueObject.CONSTRUCTOR:
        return JsonValueObject.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
