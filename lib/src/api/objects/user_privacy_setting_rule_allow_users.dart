import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A rule to allow certain specified users to do something
@immutable
class UserPrivacySettingRuleAllowUsers extends UserPrivacySettingRule {
  const UserPrivacySettingRuleAllowUsers({
    required this.userIds,
  });

  /// [userIds] The user identifiers, total number of users in all rules must
  /// not exceed 1000
  final List<int> userIds;

  static const String constructor = 'userPrivacySettingRuleAllowUsers';

  static UserPrivacySettingRuleAllowUsers? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserPrivacySettingRuleAllowUsers(
      userIds:
          List<int>.from((json['user_ids'] ?? []).map((item) => item).toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_ids': userIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
