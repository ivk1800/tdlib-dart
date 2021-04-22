import '../tdapi.dart';

/// New chat members were invited to a group
class PushMessageContentChatAddMembers extends PushMessageContent {
  PushMessageContentChatAddMembers(
      {required this.memberName,
      required this.isCurrentUser,
      required this.isReturned});

  /// [memberName] Name of the added member
  final String memberName;

  /// [isCurrentUser] True, if the current user was added to the group
  final bool isCurrentUser;

  /// [isReturned] True, if the user has returned to the group themself
  final bool isReturned;

  static const String CONSTRUCTOR = 'pushMessageContentChatAddMembers';

  static PushMessageContentChatAddMembers? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentChatAddMembers(
        memberName: json['member_name'],
        isCurrentUser: json['is_current_user'],
        isReturned: json['is_returned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'member_name': this.memberName,
        'is_current_user': this.isCurrentUser,
        'is_returned': this.isReturned,
        '@type': CONSTRUCTOR
      };
}
