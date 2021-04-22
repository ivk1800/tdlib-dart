import '../tdapi.dart';

/// Specifies the kind of chat members to return in getSupergroupMembers
abstract class SupergroupMembersFilter extends TdObject {
  const SupergroupMembersFilter();

  static const String CONSTRUCTOR = 'supergroupMembersFilter';

  /// Inherited by:
  /// [SupergroupMembersFilterRecent]
  /// [SupergroupMembersFilterContacts]
  /// [SupergroupMembersFilterAdministrators]
  /// [SupergroupMembersFilterSearch]
  /// [SupergroupMembersFilterRestricted]
  /// [SupergroupMembersFilterBanned]
  /// [SupergroupMembersFilterMention]
  /// [SupergroupMembersFilterBots]
  static SupergroupMembersFilter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case SupergroupMembersFilterRecent.CONSTRUCTOR:
        return SupergroupMembersFilterRecent.fromJson(json);
      case SupergroupMembersFilterContacts.CONSTRUCTOR:
        return SupergroupMembersFilterContacts.fromJson(json);
      case SupergroupMembersFilterAdministrators.CONSTRUCTOR:
        return SupergroupMembersFilterAdministrators.fromJson(json);
      case SupergroupMembersFilterSearch.CONSTRUCTOR:
        return SupergroupMembersFilterSearch.fromJson(json);
      case SupergroupMembersFilterRestricted.CONSTRUCTOR:
        return SupergroupMembersFilterRestricted.fromJson(json);
      case SupergroupMembersFilterBanned.CONSTRUCTOR:
        return SupergroupMembersFilterBanned.fromJson(json);
      case SupergroupMembersFilterMention.CONSTRUCTOR:
        return SupergroupMembersFilterMention.fromJson(json);
      case SupergroupMembersFilterBots.CONSTRUCTOR:
        return SupergroupMembersFilterBots.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
