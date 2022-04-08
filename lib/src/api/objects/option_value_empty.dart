import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents an unknown option or an option which has a default value
@immutable
class OptionValueEmpty extends OptionValue {
  const OptionValueEmpty();

  static const String constructor = 'optionValueEmpty';

  static OptionValueEmpty? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const OptionValueEmpty();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
