import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a non-joined group call that isn't bound to a chat
@immutable
abstract class InputGroupCall extends TdObject {
  const InputGroupCall();

  static const String constructor = 'inputGroupCall';

  /// Inherited by:
  /// [InputGroupCallLink]
  /// [InputGroupCallMessage]
  static InputGroupCall? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputGroupCallLink.constructor:
        return InputGroupCallLink.fromJson(json);
      case InputGroupCallMessage.constructor:
        return InputGroupCallMessage.fromJson(json);
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
