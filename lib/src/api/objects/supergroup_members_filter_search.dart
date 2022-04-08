import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Used to search for supergroup or channel members via a (string) query
@immutable
class SupergroupMembersFilterSearch extends SupergroupMembersFilter {
  const SupergroupMembersFilterSearch({
    required this.query,
  });

  /// [query] Query to search for
  final String query;

  static const String constructor = 'supergroupMembersFilterSearch';

  static SupergroupMembersFilterSearch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SupergroupMembersFilterSearch(
      query: json['query'],
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
