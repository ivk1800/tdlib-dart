import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes accent color and background custom emoji of a channel chat.
/// Requires can_change_info administrator right
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

  /// [accentColorId] Identifier of the accent color to use. The chat must have
  /// at least accentColor.min_channel_chat_boost_level boost level to pass the
  /// corresponding color
  final int accentColorId;

  /// [backgroundCustomEmojiId] Identifier of a custom emoji to be shown on the
  /// reply header and link preview background; 0 if none. Use
  /// chatBoostLevelFeatures.can_set_background_custom_emoji to check whether a
  /// custom emoji can be set
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
