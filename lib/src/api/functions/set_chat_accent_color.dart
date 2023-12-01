import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes accent color and background custom emoji of a chat. Supported only
/// for channels with getOption("channel_custom_accent_color_boost_level_min")
/// boost level. Requires can_change_info administrator right
/// Returns [Ok]
@immutable
class SetChatAccentColor extends TdFunction {
  const SetChatAccentColor({
    required this.chatId,
    required this.accentColorId,
    required this.backgroundCustomEmojiId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [accentColorId] Identifier of the accent color to use
  final int accentColorId;

  /// [backgroundCustomEmojiId] Identifier of a custom emoji to be shown on the
  /// reply header background; 0 if none
  final int backgroundCustomEmojiId;

  static const String constructor = 'setChatAccentColor';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'accent_color_id': accentColorId,
        'background_custom_emoji_id': backgroundCustomEmojiId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
