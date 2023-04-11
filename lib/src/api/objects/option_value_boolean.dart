import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a boolean option
@immutable
class OptionValueBoolean extends OptionValue {
  const OptionValueBoolean({
    required this.value,
  });

  /// [value] The value of the option
  final bool value;

  static const String constructor = 'optionValueBoolean';

  static OptionValueBoolean? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OptionValueBoolean(
      value: json['value'] as bool,
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
