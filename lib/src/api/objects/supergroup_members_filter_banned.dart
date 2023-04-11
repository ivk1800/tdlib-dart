import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns users banned from the supergroup or channel; can be used only by
/// administrators
@immutable
class SupergroupMembersFilterBanned extends SupergroupMembersFilter {
  const SupergroupMembersFilterBanned({
    required this.query,
  });

  /// [query] Query to search for
  final String query;

  static const String constructor = 'supergroupMembersFilterBanned';

  static SupergroupMembersFilterBanned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SupergroupMembersFilterBanned(
      query: json['query'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query': query,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
