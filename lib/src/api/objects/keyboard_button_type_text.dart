import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A simple button, with text that must be sent when the button is pressed
@immutable
class KeyboardButtonTypeText extends KeyboardButtonType {
  const KeyboardButtonTypeText();

  static const String constructor = 'keyboardButtonTypeText';

  static KeyboardButtonTypeText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const KeyboardButtonTypeText();
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
