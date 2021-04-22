import '../tdapi.dart';

/// Returns restricted supergroup members; can be used only by administrators
class SupergroupMembersFilterRestricted extends SupergroupMembersFilter {
  SupergroupMembersFilterRestricted({required this.query});

  /// [query] Query to search for
  final String query;

  static const String CONSTRUCTOR = 'supergroupMembersFilterRestricted';

  static SupergroupMembersFilterRestricted? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SupergroupMembersFilterRestricted(query: json['query']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'query': this.query, '@type': CONSTRUCTOR};
}
