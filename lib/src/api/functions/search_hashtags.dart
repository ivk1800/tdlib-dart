import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for recently used hashtags by their prefix
/// Returns [Hashtags]
@immutable
class SearchHashtags extends TdFunction {
  const SearchHashtags({
    required this.prefix,
    required this.limit,
  });

  /// [prefix] Hashtag prefix to search for
  final String prefix;

  /// [limit] The maximum number of hashtags to be returned
  final int limit;

  static const String constructor = 'searchHashtags';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'prefix': prefix,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
