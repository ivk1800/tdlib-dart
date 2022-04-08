import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns bot members of the supergroup or channel
@immutable
class SupergroupMembersFilterBots extends SupergroupMembersFilter {
  const SupergroupMembersFilterBots();

  static const String constructor = 'supergroupMembersFilterBots';

  static SupergroupMembersFilterBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SupergroupMembersFilterBots();
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
