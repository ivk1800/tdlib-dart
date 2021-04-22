import '../tdapi.dart';

/// Represents the value of an option
abstract class OptionValue extends TdObject {
  const OptionValue();

  static const String CONSTRUCTOR = 'optionValue';

  /// Inherited by:
  /// [OptionValueBoolean]
  /// [OptionValueEmpty]
  /// [OptionValueInteger]
  /// [OptionValueString]
  static OptionValue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case OptionValueBoolean.CONSTRUCTOR:
        return OptionValueBoolean.fromJson(json);
      case OptionValueEmpty.CONSTRUCTOR:
        return OptionValueEmpty.fromJson(json);
      case OptionValueInteger.CONSTRUCTOR:
        return OptionValueInteger.fromJson(json);
      case OptionValueString.CONSTRUCTOR:
        return OptionValueString.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
