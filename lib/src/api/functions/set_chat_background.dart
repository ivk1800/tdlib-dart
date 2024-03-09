import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets the background in a specific chat. Supported only in private and
/// secret chats with non-deleted users, and in chats with sufficient boost
/// level and can_change_info administrator right
/// Returns [Ok]
@immutable
class SetChatBackground extends TdFunction {
  const SetChatBackground({
    required this.chatId,
    this.background,
    this.type,
    required this.darkThemeDimming,
    required this.onlyForSelf,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [background] The input background to use; pass null to create a new filled
  /// or chat theme background
  final InputBackground? background;

  /// [type] Background type; pass null to use default background type for the
  /// chosen background; backgroundTypeChatTheme isn't supported for private and
  /// secret chats. Use chatBoostLevelFeatures.chat_theme_background_count and
  /// chatBoostLevelFeatures.can_set_custom_background to check whether the
  /// background type can be set in the boosted chat
  final BackgroundType? type;

  /// [darkThemeDimming] Dimming of the background in dark themes, as a
  /// percentage; 0-100. Applied only to Wallpaper and Fill types of background
  final int darkThemeDimming;

  /// [onlyForSelf] Pass true to set background only for self; pass false to set
  /// background for all chat users. Always false for backgrounds set in boosted
  /// chats. Background can be set for both users only by Telegram Premium users
  /// and if set background isn't of the type inputBackgroundPrevious
  final bool onlyForSelf;

  static const String constructor = 'setChatBackground';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'background': background?.toJson(),
        'type': type?.toJson(),
        'dark_theme_dimming': darkThemeDimming,
        'only_for_self': onlyForSelf,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
