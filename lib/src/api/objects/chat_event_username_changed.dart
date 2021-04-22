import '../tdapi.dart';

/// The chat username was changed
class ChatEventUsernameChanged extends ChatEventAction {
  ChatEventUsernameChanged(
      {required this.oldUsername, required this.newUsername});

  /// [oldUsername] Previous chat username
  final String oldUsername;

  /// [newUsername] New chat username
  final String newUsername;

  static const String CONSTRUCTOR = 'chatEventUsernameChanged';

  static ChatEventUsernameChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventUsernameChanged(
        oldUsername: json['old_username'], newUsername: json['new_username']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_username': this.oldUsername,
        'new_username': this.newUsername,
        '@type': CONSTRUCTOR
      };
}
