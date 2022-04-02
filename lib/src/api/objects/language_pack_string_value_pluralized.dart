import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A language pack string which has different forms based on the number of
/// some object it mentions. See
/// https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html
/// for more info
class LanguagePackStringValuePluralized extends LanguagePackStringValue {
  LanguagePackStringValuePluralized(
      {required this.zeroValue,
      required this.oneValue,
      required this.twoValue,
      required this.fewValue,
      required this.manyValue,
      required this.otherValue});

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

  static const String CONSTRUCTOR = 'languagePackStringValuePluralized';

  static LanguagePackStringValuePluralized? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LanguagePackStringValuePluralized(
        zeroValue: json['zero_value'],
        oneValue: json['one_value'],
        twoValue: json['two_value'],
        fewValue: json['few_value'],
        manyValue: json['many_value'],
        otherValue: json['other_value']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'zero_value': this.zeroValue,
        'one_value': this.oneValue,
        'two_value': this.twoValue,
        'few_value': this.fewValue,
        'many_value': this.manyValue,
        'other_value': this.otherValue,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
