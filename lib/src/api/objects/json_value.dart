import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a JSON value
@immutable
abstract class JsonValue extends TdObject {
  const JsonValue();

  static const String constructor = 'jsonValue';

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

    switch (json['@type']) {
      case JsonValueNull.constructor:
        return JsonValueNull.fromJson(json);
      case JsonValueBoolean.constructor:
        return JsonValueBoolean.fromJson(json);
      case JsonValueNumber.constructor:
        return JsonValueNumber.fromJson(json);
      case JsonValueString.constructor:
        return JsonValueString.fromJson(json);
      case JsonValueArray.constructor:
        return JsonValueArray.fromJson(json);
      case JsonValueObject.constructor:
        return JsonValueObject.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
