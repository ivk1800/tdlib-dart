import '../tdapi.dart';

/// Returns recently active users in reverse chronological order
class SupergroupMembersFilterRecent extends SupergroupMembersFilter {
  const SupergroupMembersFilterRecent();

  static const String CONSTRUCTOR = 'supergroupMembersFilterRecent';

  static SupergroupMembersFilterRecent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SupergroupMembersFilterRecent();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
