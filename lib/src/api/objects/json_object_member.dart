import '../tdapi.dart';

/// Represents one member of a JSON object
class JsonObjectMember extends TdObject {
  JsonObjectMember({required this.key, required this.value});

  /// [key] Member's key
  final String key;

  /// [value] Member's value
  final JsonValue value;

  static const String CONSTRUCTOR = 'jsonObjectMember';

  static JsonObjectMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonObjectMember(
        key: json['key'], value: JsonValue.fromJson(json['value'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'key': this.key, 'value': this.value.toJson(), '@type': CONSTRUCTOR};
}
