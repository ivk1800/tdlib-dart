import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents an unknown option or an option which has a default value
class OptionValueEmpty extends OptionValue {
  const OptionValueEmpty();

  static const String CONSTRUCTOR = 'optionValueEmpty';

  static OptionValueEmpty? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const OptionValueEmpty();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
