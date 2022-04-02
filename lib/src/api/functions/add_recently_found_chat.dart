import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Adds a chat to the list of recently found chats. The chat is added to the
/// beginning of the list. If the chat is already in the list, it will be
/// removed from the list first
/// Returns [Ok]
class AddRecentlyFoundChat extends TdFunction {
  AddRecentlyFoundChat({required this.chatId});

  /// [chatId] Identifier of the chat to add
  final int chatId;

  static const String CONSTRUCTOR = 'addRecentlyFoundChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
