import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches for public stories by the given address location. For optimal
/// performance, the number of returned stories is chosen by TDLib and can be
/// smaller than the specified limit
/// Returns [FoundStories]
@immutable
class SearchPublicStoriesByLocation extends TdFunction {
  const SearchPublicStoriesByLocation({
    required this.address,
    required this.offset,
    required this.limit,
  });

  /// [address] Address of the location
  final LocationAddress address;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of stories to be returned; up to 100. For
  /// optimal performance, the number of returned stories is chosen by TDLib and
  /// can be smaller than the specified limit
  final int limit;

  static const String constructor = 'searchPublicStoriesByLocation';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'address': address.toJson(),
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
