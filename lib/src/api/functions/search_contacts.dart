import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for the specified query in the first names, last names and
/// usernames of the known user contacts
/// Returns [Users]
@immutable
class SearchContacts extends TdFunction {
  const SearchContacts({
    required this.query,
    required this.limit,
  });

  /// [query] Query to search for; may be empty to return all contacts
  final String query;

  /// [limit] The maximum number of users to be returned
  final int limit;

  static const String constructor = 'searchContacts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'query': query,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
