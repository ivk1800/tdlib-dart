import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs TDLib that a chat was opened from the list of similar chats. The
/// method is independent of openChat and closeChat methods
/// Returns [Ok]
@immutable
class OpenChatSimilarChat extends TdFunction {
  const OpenChatSimilarChat({
    required this.chatId,
    required this.openedChatId,
  });

  /// [chatId] Identifier of the original chat, which similar chats were
  /// requested
  final int chatId;

  /// [openedChatId] Identifier of the opened chat
  final int openedChatId;

  static const String constructor = 'openChatSimilarChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'opened_chat_id': openedChatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
