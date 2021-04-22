import '../tdapi.dart';

/// Returns users banned from the supergroup or channel; can be used only by
/// administrators
class SupergroupMembersFilterBanned extends SupergroupMembersFilter {
  SupergroupMembersFilterBanned({required this.query});

  /// [query] Query to search for
  final String query;

  static const String CONSTRUCTOR = 'supergroupMembersFilterBanned';

  static SupergroupMembersFilterBanned? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SupergroupMembersFilterBanned(query: json['query']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'query': this.query, '@type': CONSTRUCTOR};
}
