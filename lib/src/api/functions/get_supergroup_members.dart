import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about members or banned users in a supergroup or
/// channel. Can be used only if supergroupFullInfo.can_get_members == true;
/// additionally, administrator privileges may be required for some filters
/// Returns [ChatMembers]
@immutable
class GetSupergroupMembers extends TdFunction {
  const GetSupergroupMembers({
    required this.supergroupId,
    this.filter,
    required this.offset,
    required this.limit,
  });

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  /// [filter] The type of users to return; pass null to use
  /// supergroupMembersFilterRecent
  final SupergroupMembersFilter? filter;

  /// [offset] Number of users to skip
  final int offset;

  /// [limit] The maximum number of users be returned; up to 200
  final int limit;

  static const String constructor = 'getSupergroupMembers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'filter': filter?.toJson(),
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
