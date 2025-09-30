import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An invitation of participants to a video chat or live stream
@immutable
class PushMessageContentInviteVideoChatParticipants extends PushMessageContent {
  const PushMessageContentInviteVideoChatParticipants({
    required this.isCurrentUser,
  });

  /// [isCurrentUser] True, if the current user was invited to the video chat or
  /// the live stream
  final bool isCurrentUser;

  static const String constructor =
      'pushMessageContentInviteVideoChatParticipants';

  static PushMessageContentInviteVideoChatParticipants? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return PushMessageContentInviteVideoChatParticipants(
      isCurrentUser: json['is_current_user'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'is_current_user': isCurrentUser,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
