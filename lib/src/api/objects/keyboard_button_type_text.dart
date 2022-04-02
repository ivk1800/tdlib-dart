import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A simple button, with text that must be sent when the button is pressed
class KeyboardButtonTypeText extends KeyboardButtonType {
  const KeyboardButtonTypeText();

  static const String CONSTRUCTOR = 'keyboardButtonTypeText';

  static KeyboardButtonTypeText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const KeyboardButtonTypeText();
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
