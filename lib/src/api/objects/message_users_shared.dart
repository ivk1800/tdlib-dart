import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The current user shared users, which were requested by the bot
@immutable
class MessageUsersShared extends MessageContent {
  const MessageUsersShared({
    required this.userIds,
    required this.buttonId,
  });

  /// [userIds] Identifier of the shared users
  final List<int> userIds;

  /// [buttonId] Identifier of the keyboard button with the request
  final int buttonId;

  static const String constructor = 'messageUsersShared';

  static MessageUsersShared? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageUsersShared(
      userIds: List<int>.from(
          ((json['user_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      buttonId: json['button_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_ids': userIds.map((item) => item).toList(),
        'button_id': buttonId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
