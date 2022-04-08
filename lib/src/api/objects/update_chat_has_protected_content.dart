import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat content was allowed or restricted for saving
@immutable
class UpdateChatHasProtectedContent extends Update {
  const UpdateChatHasProtectedContent({
    required this.chatId,
    required this.hasProtectedContent,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [hasProtectedContent] New value of has_protected_content
  final bool hasProtectedContent;

  static const String constructor = 'updateChatHasProtectedContent';

  static UpdateChatHasProtectedContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatHasProtectedContent(
      chatId: json['chat_id'],
      hasProtectedContent: json['has_protected_content'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'has_protected_content': hasProtectedContent,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
