import '../tdapi.dart';

/// Returns contacts of the user, which are members of the supergroup or
/// channel
class SupergroupMembersFilterContacts extends SupergroupMembersFilter {
  SupergroupMembersFilterContacts({required this.query});

  /// [query] Query to search for
  final String query;

  static const String CONSTRUCTOR = 'supergroupMembersFilterContacts';

  static SupergroupMembersFilterContacts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SupergroupMembersFilterContacts(query: json['query']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'query': this.query, '@type': CONSTRUCTOR};
}
