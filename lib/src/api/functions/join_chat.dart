import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Adds the current user as a new member to a chat. Private and secret chats
/// can't be joined using this method
/// Returns [Ok]
class JoinChat extends TdFunction {
  JoinChat({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String CONSTRUCTOR = 'joinChat';

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
