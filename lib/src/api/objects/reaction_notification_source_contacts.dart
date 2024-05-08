import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Notifications for reactions are shown only for reactions from contacts
@immutable
class ReactionNotificationSourceContacts extends ReactionNotificationSource {
  const ReactionNotificationSourceContacts();

  static const String constructor = 'reactionNotificationSourceContacts';

  static ReactionNotificationSourceContacts? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ReactionNotificationSourceContacts();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
