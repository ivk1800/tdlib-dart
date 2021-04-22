import '../tdapi.dart';

/// Returns bot members of the supergroup or channel
class SupergroupMembersFilterBots extends SupergroupMembersFilter {
  const SupergroupMembersFilterBots();

  static const String CONSTRUCTOR = 'supergroupMembersFilterBots';

  static SupergroupMembersFilterBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SupergroupMembersFilterBots();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
