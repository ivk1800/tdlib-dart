import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a boolean option
class OptionValueBoolean extends OptionValue {
  OptionValueBoolean({required this.value});

  /// [value] The value of the option
  final bool value;

  static const String CONSTRUCTOR = 'optionValueBoolean';

  static OptionValueBoolean? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OptionValueBoolean(value: json['value']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'value': this.value, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
