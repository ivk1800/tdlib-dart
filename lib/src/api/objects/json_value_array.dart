import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a JSON array
class JsonValueArray extends JsonValue {
  JsonValueArray({required this.values});

  /// [values] The list of array elements
  final List<JsonValue> values;

  static const String CONSTRUCTOR = 'jsonValueArray';

  static JsonValueArray? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonValueArray(
        values: List<JsonValue>.from((json['values'] ?? [])
            .map((item) => JsonValue.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'values': values.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
