import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a JSON array
@immutable
class JsonValueArray extends JsonValue {
  const JsonValueArray({
    required this.values,
  });

  /// [values] The list of array elements
  final List<JsonValue> values;

  static const String constructor = 'jsonValueArray';

  static JsonValueArray? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonValueArray(
      values: List<JsonValue>.from((json['values'] ?? [])
          .map((item) => JsonValue.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'values': values.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
