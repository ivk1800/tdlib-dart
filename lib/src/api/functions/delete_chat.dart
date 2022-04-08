import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes a chat along with all messages in the corresponding chat for all
/// chat members; requires owner privileges. For group chats this will release
/// the username and remove all members. Chats with more than 1000 members
/// can't be deleted using this method
/// Returns [Ok]
@immutable
class DeleteChat extends TdFunction {
  const DeleteChat({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'deleteChat';

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
