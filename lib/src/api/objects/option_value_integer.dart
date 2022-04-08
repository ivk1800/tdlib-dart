import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents an integer option
@immutable
class OptionValueInteger extends OptionValue {
  const OptionValueInteger({
    required this.value,
  });

  /// [value] The value of the option
  final int value;

  static const String constructor = 'optionValueInteger';

  static OptionValueInteger? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OptionValueInteger(
      value: int.tryParse(json['value']) ?? 0,
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
