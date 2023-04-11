import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a boolean JSON value
@immutable
class JsonValueBoolean extends JsonValue {
  const JsonValueBoolean({
    required this.value,
  });

  /// [value] The value
  final bool value;

  static const String constructor = 'jsonValueBoolean';

  static JsonValueBoolean? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonValueBoolean(
      value: json['value'] as bool,
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
