import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A rule to restrict all specified users from doing something
@immutable
class UserPrivacySettingRuleRestrictUsers extends UserPrivacySettingRule {
  const UserPrivacySettingRuleRestrictUsers({
    required this.userIds,
  });

  /// [userIds] The user identifiers, total number of users in all rules must
  /// not exceed 1000
  final List<int> userIds;

  static const String constructor = 'userPrivacySettingRuleRestrictUsers';

  static UserPrivacySettingRuleRestrictUsers? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserPrivacySettingRuleRestrictUsers(
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
