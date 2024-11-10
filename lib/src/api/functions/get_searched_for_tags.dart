import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns recently searched for hashtags or cashtags by their prefix
/// Returns [Hashtags]
@immutable
class GetSearchedForTags extends TdFunction {
  const GetSearchedForTags({
    required this.tagPrefix,
    required this.limit,
  });

  /// [tagPrefix] Prefix of hashtags or cashtags to return
  final String tagPrefix;

  /// [limit] The maximum number of items to be returned
  final int limit;

  static const String constructor = 'getSearchedForTags';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'tag_prefix': tagPrefix,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
