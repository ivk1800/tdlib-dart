import '../tdapi.dart';

/// Removes a chat action bar without any other action
/// Returns [Ok]
class RemoveChatActionBar extends TdFunction {
  RemoveChatActionBar({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String CONSTRUCTOR = 'removeChatActionBar';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR};
}
