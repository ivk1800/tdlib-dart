import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns the owner and administrators
class SupergroupMembersFilterAdministrators extends SupergroupMembersFilter {
  const SupergroupMembersFilterAdministrators();

  static const String CONSTRUCTOR = 'supergroupMembersFilterAdministrators';

  static SupergroupMembersFilterAdministrators? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SupergroupMembersFilterAdministrators();
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
