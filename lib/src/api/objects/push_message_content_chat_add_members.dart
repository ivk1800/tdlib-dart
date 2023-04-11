import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// New chat members were invited to a group
@immutable
class PushMessageContentChatAddMembers extends PushMessageContent {
  const PushMessageContentChatAddMembers({
    required this.memberName,
    required this.isCurrentUser,
    required this.isReturned,
  });

  /// [memberName] Name of the added member
  final String memberName;

  /// [isCurrentUser] True, if the current user was added to the group
  final bool isCurrentUser;

  /// [isReturned] True, if the user has returned to the group themselves
  final bool isReturned;

  static const String constructor = 'pushMessageContentChatAddMembers';

  static PushMessageContentChatAddMembers? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChatAddMembers(
      memberName: json['member_name'] as String,
      isCurrentUser: json['is_current_user'] as bool,
      isReturned: json['is_returned'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'member_name': memberName,
        'is_current_user': isCurrentUser,
        'is_returned': isReturned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
