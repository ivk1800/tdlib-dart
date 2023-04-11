import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An ordinary language pack string
@immutable
class LanguagePackStringValueOrdinary extends LanguagePackStringValue {
  const LanguagePackStringValueOrdinary({
    required this.value,
  });

  /// [value] String value
  final String value;

  static const String constructor = 'languagePackStringValueOrdinary';

  static LanguagePackStringValueOrdinary? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LanguagePackStringValueOrdinary(
      value: json['value'] as String,
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
