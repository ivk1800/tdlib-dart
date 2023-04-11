import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns contacts of the user, which are members of the supergroup or
/// channel
@immutable
class SupergroupMembersFilterContacts extends SupergroupMembersFilter {
  const SupergroupMembersFilterContacts({
    required this.query,
  });

  /// [query] Query to search for
  final String query;

  static const String constructor = 'supergroupMembersFilterContacts';

  static SupergroupMembersFilterContacts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SupergroupMembersFilterContacts(
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
