import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Deletes a chat along with all messages in the corresponding chat for all
/// chat members; requires owner privileges. For group chats this will release
/// the username and remove all members. Chats with more than 1000 members
/// can't be deleted using this method
/// Returns [Ok]
class DeleteChat extends TdFunction {
  DeleteChat({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  static const String CONSTRUCTOR = 'deleteChat';

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
