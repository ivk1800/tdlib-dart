import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a numeric JSON value
@immutable
class JsonValueNumber extends JsonValue {
  const JsonValueNumber({
    required this.value,
  });

  /// [value] The value
  final double value;

  static const String constructor = 'jsonValueNumber';

  static JsonValueNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonValueNumber(
      value: (json['value'] as num).toDouble(),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'value': value,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
