import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that the user opened the sponsored chat via the button, the
/// name, the chat photo, a mention in the sponsored message text, or the
/// media in the sponsored message
/// Returns [Ok]
@immutable
class ClickChatSponsoredMessage extends TdFunction {
  const ClickChatSponsoredMessage({
    required this.chatId,
    required this.messageId,
    required this.isMediaClick,
    required this.fromFullscreen,
  });

  /// [chatId] Chat identifier of the sponsored message
  final int chatId;

  /// [messageId] Identifier of the sponsored message
  final int messageId;

  /// [isMediaClick] Pass true if the media was clicked in the sponsored message
  final bool isMediaClick;

  /// [fromFullscreen] Pass true if the user expanded the video from the
  /// sponsored message fullscreen before the click
  final bool fromFullscreen;

  static const String constructor = 'clickChatSponsoredMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'is_media_click': isMediaClick,
        'from_fullscreen': fromFullscreen,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
