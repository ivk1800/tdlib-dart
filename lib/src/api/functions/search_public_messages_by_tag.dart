import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for public channel posts containing the given hashtag or cashtag.
/// For optimal performance, the number of returned messages is chosen by
/// TDLib and can be smaller than the specified limit
/// Returns [FoundMessages]
@immutable
class SearchPublicMessagesByTag extends TdFunction {
  const SearchPublicMessagesByTag({
    required this.tag,
    required this.offset,
    required this.limit,
  });

  /// [tag] Hashtag or cashtag to search for
  final String tag;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of messages to be returned; up to 100. For
  /// optimal performance, the number of returned messages is chosen by TDLib
  /// and can be smaller than the specified limit
  final int limit;

  static const String constructor = 'searchPublicMessagesByTag';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'tag': tag,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
