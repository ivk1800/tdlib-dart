import '../tdapi.dart';

/// Represents an integer option
class OptionValueInteger extends OptionValue {
  OptionValueInteger({required this.value});

  /// [value] The value of the option
  final int value;

  static const String CONSTRUCTOR = 'optionValueInteger';

  static OptionValueInteger? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OptionValueInteger(value: int.tryParse(json['value']) ?? 0);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'value': this.value, '@type': CONSTRUCTOR};
}
