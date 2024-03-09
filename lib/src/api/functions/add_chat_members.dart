import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds multiple new members to a chat; requires can_invite_users member
/// right. Currently, this method is only available for supergroups and
/// channels. This method can't be used to join a chat. Members can't be added
/// to a channel if it has more than 200 members
/// Returns [Ok]
@immutable
class AddChatMembers extends TdFunction {
  const AddChatMembers({
    required this.chatId,
    required this.userIds,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [userIds] Identifiers of the users to be added to the chat. The maximum
  /// number of added users is 20 for supergroups and 100 for channels
  final List<int> userIds;

  static const String constructor = 'addChatMembers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'user_ids': userIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
