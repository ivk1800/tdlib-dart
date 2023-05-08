import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A button that forces an inline query to the bot to be inserted in the
/// input field
@immutable
class InlineKeyboardButtonTypeSwitchInline extends InlineKeyboardButtonType {
  const InlineKeyboardButtonTypeSwitchInline({
    required this.query,
    required this.targetChat,
  });

  /// [query] Inline query to be sent to the bot
  final String query;

  /// [targetChat] Target chat from which to send the inline query
  final TargetChat targetChat;

  static const String constructor = 'inlineKeyboardButtonTypeSwitchInline';

  static InlineKeyboardButtonTypeSwitchInline? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeSwitchInline(
      query: json['query'] as String,
      targetChat:
          TargetChat.fromJson(json['target_chat'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query': query,
        'target_chat': targetChat.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
