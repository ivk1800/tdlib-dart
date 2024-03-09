import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains privacy settings for message read date in private chats. Read
/// dates are always shown to the users that can see online status of the
/// current user regardless of this setting
@immutable
class ReadDatePrivacySettings extends TdObject {
  const ReadDatePrivacySettings({
    required this.showReadDate,
  });

  /// [showReadDate] True, if message read date is shown to other users in
  /// private chats. If false and the current user isn't a Telegram Premium
  /// user, then they will not be able to see other's message read date.
  final bool showReadDate;

  static const String constructor = 'readDatePrivacySettings';

  static ReadDatePrivacySettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReadDatePrivacySettings(
      showReadDate: json['show_read_date'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'show_read_date': showReadDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
