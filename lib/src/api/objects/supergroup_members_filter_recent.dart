import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
