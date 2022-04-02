import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a single button in an inline keyboard
class InlineKeyboardButton extends TdObject {
  InlineKeyboardButton({required this.text, required this.type});

  /// [text] Text of the button
  final String text;

  /// [type] Type of the button
  final InlineKeyboardButtonType type;

  static const String CONSTRUCTOR = 'inlineKeyboardButton';

  static InlineKeyboardButton? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButton(
        text: json['text'],
        type: InlineKeyboardButtonType.fromJson(json['type'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text, 'type': this.type.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
