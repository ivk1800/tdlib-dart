import '../tdapi.dart';

/// Represents a single button in a bot keyboard
class KeyboardButton extends TdObject {
  KeyboardButton({required this.text, required this.type});

  /// [text] Text of the button
  final String text;

  /// [type] Type of the button
  final KeyboardButtonType type;

  static const String CONSTRUCTOR = 'keyboardButton';

  static KeyboardButton? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return KeyboardButton(
        text: json['text'], type: KeyboardButtonType.fromJson(json['type'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text, 'type': this.type.toJson(), '@type': CONSTRUCTOR};
}
