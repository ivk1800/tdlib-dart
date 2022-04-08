import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes a chat from the list of recently found chats
/// Returns [Ok]
@immutable
class RemoveRecentlyFoundChat extends TdFunction {
  const RemoveRecentlyFoundChat({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat to be removed
  final int chatId;

  static const String constructor = 'removeRecentlyFoundChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
