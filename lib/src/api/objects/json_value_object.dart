import '../tdapi.dart';

/// Represents a JSON object
class JsonValueObject extends JsonValue {
  JsonValueObject({required this.members});

  /// [members] The list of object members
  final List<JsonObjectMember> members;

  static const String CONSTRUCTOR = 'jsonValueObject';

  static JsonValueObject? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonValueObject(
        members: List<JsonObjectMember>.from((json['members'] ?? [])
            .map((item) => JsonObjectMember.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'members': members.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
