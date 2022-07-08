import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Specifies the kind of chat members to return in getSupergroupMembers
@immutable
abstract class SupergroupMembersFilter extends TdObject {
  const SupergroupMembersFilter();

  static const String constructor = 'supergroupMembersFilter';

  /// Inherited by:
  /// [SupergroupMembersFilterAdministrators]
  /// [SupergroupMembersFilterBanned]
  /// [SupergroupMembersFilterBots]
  /// [SupergroupMembersFilterContacts]
  /// [SupergroupMembersFilterMention]
  /// [SupergroupMembersFilterRecent]
  /// [SupergroupMembersFilterRestricted]
  /// [SupergroupMembersFilterSearch]
  static SupergroupMembersFilter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SupergroupMembersFilterAdministrators.constructor:
        return SupergroupMembersFilterAdministrators.fromJson(json);
      case SupergroupMembersFilterBanned.constructor:
        return SupergroupMembersFilterBanned.fromJson(json);
      case SupergroupMembersFilterBots.constructor:
        return SupergroupMembersFilterBots.fromJson(json);
      case SupergroupMembersFilterContacts.constructor:
        return SupergroupMembersFilterContacts.fromJson(json);
      case SupergroupMembersFilterMention.constructor:
        return SupergroupMembersFilterMention.fromJson(json);
      case SupergroupMembersFilterRecent.constructor:
        return SupergroupMembersFilterRecent.fromJson(json);
      case SupergroupMembersFilterRestricted.constructor:
        return SupergroupMembersFilterRestricted.fromJson(json);
      case SupergroupMembersFilterSearch.constructor:
        return SupergroupMembersFilterSearch.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
