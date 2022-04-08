import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A button that forces an inline query to the bot to be inserted in the
/// input field
@immutable
class InlineKeyboardButtonTypeSwitchInline extends InlineKeyboardButtonType {
  const InlineKeyboardButtonTypeSwitchInline({
    required this.query,
    required this.inCurrentChat,
  });

  /// [query] Inline query to be sent to the bot
  final String query;

  /// [inCurrentChat] True, if the inline query must be sent from the current
  /// chat
  final bool inCurrentChat;

  static const String constructor = 'inlineKeyboardButtonTypeSwitchInline';

  static InlineKeyboardButtonTypeSwitchInline? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeSwitchInline(
      query: json['query'],
      inCurrentChat: json['in_current_chat'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query': query,
        'in_current_chat': inCurrentChat,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
