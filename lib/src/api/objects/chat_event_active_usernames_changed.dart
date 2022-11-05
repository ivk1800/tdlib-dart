import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat active usernames were changed
@immutable
class ChatEventActiveUsernamesChanged extends ChatEventAction {
  const ChatEventActiveUsernamesChanged({
    required this.oldUsernames,
    required this.newUsernames,
  });

  /// [oldUsernames] Previous list of active usernames
  final List<String> oldUsernames;

  /// [newUsernames] New list of active usernames
  final List<String> newUsernames;

  static const String constructor = 'chatEventActiveUsernamesChanged';

  static ChatEventActiveUsernamesChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventActiveUsernamesChanged(
      oldUsernames: List<String>.from(
          (json['old_usernames'] ?? []).map((item) => item).toList()),
      newUsernames: List<String>.from(
          (json['new_usernames'] ?? []).map((item) => item).toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_usernames': oldUsernames.map((item) => item).toList(),
        'new_usernames': newUsernames.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
