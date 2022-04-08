import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat username was changed
@immutable
class ChatEventUsernameChanged extends ChatEventAction {
  const ChatEventUsernameChanged({
    required this.oldUsername,
    required this.newUsername,
  });

  /// [oldUsername] Previous chat username
  final String oldUsername;

  /// [newUsername] New chat username
  final String newUsername;

  static const String constructor = 'chatEventUsernameChanged';

  static ChatEventUsernameChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventUsernameChanged(
      oldUsername: json['old_username'],
      newUsername: json['new_username'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_username': oldUsername,
        'new_username': newUsername,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
