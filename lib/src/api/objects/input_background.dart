import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about background to set
@immutable
abstract class InputBackground extends TdObject {
  const InputBackground();

  static const String constructor = 'inputBackground';

  /// Inherited by:
  /// [InputBackgroundLocal]
  /// [InputBackgroundRemote]
  static InputBackground? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputBackgroundLocal.constructor:
        return InputBackgroundLocal.fromJson(json);
      case InputBackgroundRemote.constructor:
        return InputBackgroundRemote.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
