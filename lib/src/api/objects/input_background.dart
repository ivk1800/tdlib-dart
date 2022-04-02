import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains information about background to set
abstract class InputBackground extends TdObject {
  const InputBackground();

  static const String CONSTRUCTOR = 'inputBackground';

  /// Inherited by:
  /// [InputBackgroundLocal]
  /// [InputBackgroundRemote]
  static InputBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case InputBackgroundLocal.CONSTRUCTOR:
        return InputBackgroundLocal.fromJson(json);
      case InputBackgroundRemote.CONSTRUCTOR:
        return InputBackgroundRemote.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
