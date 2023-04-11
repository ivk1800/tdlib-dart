import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a string option
@immutable
class OptionValueString extends OptionValue {
  const OptionValueString({
    required this.value,
  });

  /// [value] The value of the option
  final String value;

  static const String constructor = 'optionValueString';

  static OptionValueString? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OptionValueString(
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
