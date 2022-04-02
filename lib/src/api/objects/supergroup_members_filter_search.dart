import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Used to search for supergroup or channel members via a (string) query
class SupergroupMembersFilterSearch extends SupergroupMembersFilter {
  SupergroupMembersFilterSearch({required this.query});

  /// [query] Query to search for
  final String query;

  static const String CONSTRUCTOR = 'supergroupMembersFilterSearch';

  static SupergroupMembersFilterSearch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SupergroupMembersFilterSearch(query: json['query']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'query': this.query, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
