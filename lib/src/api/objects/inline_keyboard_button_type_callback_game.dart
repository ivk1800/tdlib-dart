import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A button with a game that sends a callback query to a bot. This button
/// must be in the first column and row of the keyboard and can be attached
/// only to a message with content of the type messageGame
class InlineKeyboardButtonTypeCallbackGame extends InlineKeyboardButtonType {
  const InlineKeyboardButtonTypeCallbackGame();

  static const String CONSTRUCTOR = 'inlineKeyboardButtonTypeCallbackGame';

  static InlineKeyboardButtonTypeCallbackGame? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InlineKeyboardButtonTypeCallbackGame();
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
