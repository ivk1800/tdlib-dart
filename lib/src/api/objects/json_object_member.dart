import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents one member of a JSON object
@immutable
class JsonObjectMember extends TdObject {
  const JsonObjectMember({
    required this.key,
    required this.value,
  });

  /// [key] Member's key
  final String key;

  /// [value] Member's value
  final JsonValue value;

  static const String constructor = 'jsonObjectMember';

  static JsonObjectMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonObjectMember(
      key: json['key'] as String,
      value: JsonValue.fromJson(json['value'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'key': key,
        'value': value.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
