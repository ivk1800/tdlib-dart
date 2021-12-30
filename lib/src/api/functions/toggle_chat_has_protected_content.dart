import '../tdapi.dart';

/// Changes the ability of users to save, forward, or copy chat content.
/// Supported only for basic groups, supergroups and channels. Requires owner
/// privileges
/// Returns [Ok]
class ToggleChatHasProtectedContent extends TdFunction {
  ToggleChatHasProtectedContent(
      {required this.chatId, required this.hasProtectedContent});

  /// [chatId] Chat identifier
  final int chatId;

  /// [hasProtectedContent] True, if chat content can't be saved locally,
  /// forwarded, or copied
  final bool hasProtectedContent;

  static const String CONSTRUCTOR = 'toggleChatHasProtectedContent';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'has_protected_content': this.hasProtectedContent,
        '@type': CONSTRUCTOR
      };
}
