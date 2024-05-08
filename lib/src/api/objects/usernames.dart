import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes usernames assigned to a user, a supergroup, or a channel
@immutable
class Usernames extends TdObject {
  const Usernames({
    required this.activeUsernames,
    required this.disabledUsernames,
    required this.editableUsername,
  });

  /// [activeUsernames] List of active usernames; the first one must be shown as
  /// the primary username. The order of active usernames can be changed with
  /// reorderActiveUsernames, reorderBotActiveUsernames or
  /// reorderSupergroupActiveUsernames
  final List<String> activeUsernames;

  /// [disabledUsernames] List of currently disabled usernames; the username can
  /// be activated with toggleUsernameIsActive, toggleBotUsernameIsActive, or
  /// toggleSupergroupUsernameIsActive
  final List<String> disabledUsernames;

  /// [editableUsername] The active username, which can be changed with
  /// setUsername or setSupergroupUsername. Information about other active
  /// usernames can be received using getCollectibleItemInfo
  final String editableUsername;

  static const String constructor = 'usernames';

  static Usernames? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Usernames(
      activeUsernames: List<String>.from(
          ((json['active_usernames'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      disabledUsernames: List<String>.from(
          ((json['disabled_usernames'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      editableUsername: json['editable_username'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'active_usernames': activeUsernames.map((item) => item).toList(),
        'disabled_usernames': disabledUsernames.map((item) => item).toList(),
        'editable_username': editableUsername,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
