import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a video chat. Call searchPublicChat with the given
/// chat username, and then joinGoupCall with the given invite hash to process
/// the link
@immutable
class InternalLinkTypeVideoChat extends InternalLinkType {
  const InternalLinkTypeVideoChat({
    required this.chatUsername,
    required this.inviteHash,
    required this.isLiveStream,
  });

  /// [chatUsername] Username of the chat with the video chat
  final String chatUsername;

  /// [inviteHash] If non-empty, invite hash to be used to join the video chat
  /// without being muted by administrators
  final String inviteHash;

  /// [isLiveStream] True, if the video chat is expected to be a live stream in
  /// a channel or a broadcast group
  final bool isLiveStream;

  static const String constructor = 'internalLinkTypeVideoChat';

  static InternalLinkTypeVideoChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeVideoChat(
      chatUsername: json['chat_username'],
      inviteHash: json['invite_hash'],
      isLiveStream: json['is_live_stream'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_username': chatUsername,
        'invite_hash': inviteHash,
        'is_live_stream': isLiveStream,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
