import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns recently active users in reverse chronological order
@immutable
class SupergroupMembersFilterRecent extends SupergroupMembersFilter {
  const SupergroupMembersFilterRecent();

  static const String constructor = 'supergroupMembersFilterRecent';

  static SupergroupMembersFilterRecent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SupergroupMembersFilterRecent();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
