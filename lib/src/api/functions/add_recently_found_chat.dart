import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds a chat to the list of recently found chats. The chat is added to the
/// beginning of the list. If the chat is already in the list, it will be
/// removed from the list first
/// Returns [Ok]
@immutable
class AddRecentlyFoundChat extends TdFunction {
  const AddRecentlyFoundChat({
    required this.chatId,
  });

  /// [chatId] Identifier of the chat to add
  final int chatId;

  static const String constructor = 'addRecentlyFoundChat';

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
