import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a single button in an inline keyboard
@immutable
class InlineKeyboardButton extends TdObject {
  const InlineKeyboardButton({
    required this.text,
    required this.type,
  });

  /// [text] Text of the button
  final String text;

  /// [type] Type of the button
  final InlineKeyboardButtonType type;

  static const String constructor = 'inlineKeyboardButton';

  static InlineKeyboardButton? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButton(
      text: json['text'] as String,
      type: InlineKeyboardButtonType.fromJson(
          json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
