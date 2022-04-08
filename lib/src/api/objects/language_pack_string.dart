import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents one language pack string
@immutable
class LanguagePackString extends TdObject {
  const LanguagePackString({
    required this.key,
    this.value,
  });

  /// [key] String key
  final String key;

  /// [value] String value; pass null if the string needs to be taken from the
  /// built-in English language pack
  final LanguagePackStringValue? value;

  static const String constructor = 'languagePackString';

  static LanguagePackString? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LanguagePackString(
      key: json['key'],
      value: LanguagePackStringValue.fromJson(json['value']),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'key': key,
        'value': value?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
