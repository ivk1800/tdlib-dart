import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adding users to a chat has failed because of their privacy settings. An
/// invite link can be shared with the users if appropriate
@immutable
class UpdateAddChatMembersPrivacyForbidden extends Update {
  const UpdateAddChatMembersPrivacyForbidden({
    required this.chatId,
    required this.userIds,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [userIds] Identifiers of users, which weren't added because of their
  /// privacy settings
  final List<int> userIds;

  static const String constructor = 'updateAddChatMembersPrivacyForbidden';

  static UpdateAddChatMembersPrivacyForbidden? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAddChatMembersPrivacyForbidden(
      chatId: json['chat_id'],
      userIds:
          List<int>.from((json['user_ids'] ?? []).map((item) => item).toList()),
    );
  }

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
