import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The sponsor is a private channel chat
@immutable
class MessageSponsorTypePrivateChannel extends MessageSponsorType {
  const MessageSponsorTypePrivateChannel({
    required this.title,
    required this.inviteLink,
  });

  /// [title] Title of the chat
  final String title;

  /// [inviteLink] Invite link for the channel
  final String inviteLink;

  static const String constructor = 'messageSponsorTypePrivateChannel';

  static MessageSponsorTypePrivateChannel? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSponsorTypePrivateChannel(
      title: json['title'] as String,
      inviteLink: json['invite_link'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'invite_link': inviteLink,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
