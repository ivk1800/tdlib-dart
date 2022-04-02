import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The chat is a private chat with an administrator of a chat to which the
/// user sent join request
class ChatActionBarJoinRequest extends ChatActionBar {
  ChatActionBarJoinRequest(
      {required this.title,
      required this.isChannel,
      required this.requestDate});

  /// [title] Title of the chat to which the join request was sent
  final String title;

  /// [isChannel] True, if the join request was sent to a channel chat
  final bool isChannel;

  /// [requestDate] Point in time (Unix timestamp) when the join request was
  /// sent
  final int requestDate;

  static const String CONSTRUCTOR = 'chatActionBarJoinRequest';

  static ChatActionBarJoinRequest? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatActionBarJoinRequest(
        title: json['title'],
        isChannel: json['is_channel'],
        requestDate: json['request_date']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'title': this.title,
        'is_channel': this.isChannel,
        'request_date': this.requestDate,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
