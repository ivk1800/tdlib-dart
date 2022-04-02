import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
