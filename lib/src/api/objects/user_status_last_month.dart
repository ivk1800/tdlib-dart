import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user is offline, but was online last month
@immutable
class UserStatusLastMonth extends UserStatus {
  const UserStatusLastMonth({
    required this.byMyPrivacySettings,
  });

  /// [byMyPrivacySettings] Exact user's status is hidden because the current
  /// user enabled userPrivacySettingShowStatus privacy setting for the user and
  /// has no Telegram Premium
  final bool byMyPrivacySettings;

  static const String constructor = 'userStatusLastMonth';

  static UserStatusLastMonth? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserStatusLastMonth(
      byMyPrivacySettings: json['by_my_privacy_settings'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'by_my_privacy_settings': byMyPrivacySettings,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
