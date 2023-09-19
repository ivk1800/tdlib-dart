import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches specified query by word prefixes in the provided strings. Returns
/// 0-based positions of strings that matched. Can be called synchronously
/// Returns [FoundPositions]
@immutable
class SearchStringsByPrefix extends TdFunction {
  const SearchStringsByPrefix({
    required this.strings,
    required this.query,
    required this.limit,
    required this.returnNoneForEmptyQuery,
  });

  /// [strings] The strings to search in for the query
  final List<String> strings;

  /// [query] Query to search for
  final String query;

  /// [limit] The maximum number of objects to return
  final int limit;

  /// [returnNoneForEmptyQuery] Pass true to receive no results for an empty
  /// query
  final bool returnNoneForEmptyQuery;

  static const String constructor = 'searchStringsByPrefix';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'strings': strings.map((item) => item).toList(),
        'query': query,
        'limit': limit,
        'return_none_for_empty_query': returnNoneForEmptyQuery,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
