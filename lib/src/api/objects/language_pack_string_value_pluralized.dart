import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A language pack string which has different forms based on the number of
/// some object it mentions. See
/// https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html
/// for more information
@immutable
class LanguagePackStringValuePluralized extends LanguagePackStringValue {
  const LanguagePackStringValuePluralized({
    required this.zeroValue,
    required this.oneValue,
    required this.twoValue,
    required this.fewValue,
    required this.manyValue,
    required this.otherValue,
  });

  /// [zeroValue] Value for zero objects
  final String zeroValue;

  /// [oneValue] Value for one object
  final String oneValue;

  /// [twoValue] Value for two objects
  final String twoValue;

  /// [fewValue] Value for few objects
  final String fewValue;

  /// [manyValue] Value for many objects
  final String manyValue;

  /// [otherValue] Default value
  final String otherValue;

  static const String constructor = 'languagePackStringValuePluralized';

  static LanguagePackStringValuePluralized? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LanguagePackStringValuePluralized(
      zeroValue: json['zero_value'] as String,
      oneValue: json['one_value'] as String,
      twoValue: json['two_value'] as String,
      fewValue: json['few_value'] as String,
      manyValue: json['many_value'] as String,
      otherValue: json['other_value'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'zero_value': zeroValue,
        'one_value': oneValue,
        'two_value': twoValue,
        'few_value': fewValue,
        'many_value': manyValue,
        'other_value': otherValue,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
