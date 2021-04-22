import '../tdapi.dart';

/// Represents a string option
class OptionValueString extends OptionValue {
  OptionValueString({required this.value});

  /// [value] The value of the option
  final String value;

  static const String CONSTRUCTOR = 'optionValueString';

  static OptionValueString? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OptionValueString(value: json['value']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'value': this.value, '@type': CONSTRUCTOR};
}
