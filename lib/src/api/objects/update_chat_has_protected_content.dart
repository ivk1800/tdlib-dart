import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A chat content was allowed or restricted for saving
class UpdateChatHasProtectedContent extends Update {
  UpdateChatHasProtectedContent(
      {required this.chatId, required this.hasProtectedContent});

  /// [chatId] Chat identifier
  final int chatId;

  /// [hasProtectedContent] New value of has_protected_content
  final bool hasProtectedContent;

  static const String CONSTRUCTOR = 'updateChatHasProtectedContent';

  static UpdateChatHasProtectedContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatHasProtectedContent(
        chatId: json['chat_id'],
        hasProtectedContent: json['has_protected_content']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'has_protected_content': this.hasProtectedContent,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
