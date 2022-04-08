import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a keyboard button type
@immutable
abstract class KeyboardButtonType extends TdObject {
  const KeyboardButtonType();

  static const String constructor = 'keyboardButtonType';

  /// Inherited by:
  /// [KeyboardButtonTypeText]
  /// [KeyboardButtonTypeRequestPhoneNumber]
  /// [KeyboardButtonTypeRequestLocation]
  /// [KeyboardButtonTypeRequestPoll]
  static KeyboardButtonType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case KeyboardButtonTypeText.constructor:
        return KeyboardButtonTypeText.fromJson(json);
      case KeyboardButtonTypeRequestPhoneNumber.constructor:
        return KeyboardButtonTypeRequestPhoneNumber.fromJson(json);
      case KeyboardButtonTypeRequestLocation.constructor:
        return KeyboardButtonTypeRequestLocation.fromJson(json);
      case KeyboardButtonTypeRequestPoll.constructor:
        return KeyboardButtonTypeRequestPoll.fromJson(json);
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
