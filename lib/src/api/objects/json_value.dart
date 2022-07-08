import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a JSON value
@immutable
abstract class JsonValue extends TdObject {
  const JsonValue();

  static const String constructor = 'jsonValue';

  /// Inherited by:
  /// [JsonValueArray]
  /// [JsonValueBoolean]
  /// [JsonValueNull]
  /// [JsonValueNumber]
  /// [JsonValueObject]
  /// [JsonValueString]
  static JsonValue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case JsonValueArray.constructor:
        return JsonValueArray.fromJson(json);
      case JsonValueBoolean.constructor:
        return JsonValueBoolean.fromJson(json);
      case JsonValueNull.constructor:
        return JsonValueNull.fromJson(json);
      case JsonValueNumber.constructor:
        return JsonValueNumber.fromJson(json);
      case JsonValueObject.constructor:
        return JsonValueObject.fromJson(json);
      case JsonValueString.constructor:
        return JsonValueString.fromJson(json);
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
