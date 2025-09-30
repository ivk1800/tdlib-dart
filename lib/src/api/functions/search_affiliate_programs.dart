import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Searches affiliate programs that can be connected to the given affiliate
/// Returns [FoundAffiliatePrograms]
@immutable
class SearchAffiliatePrograms extends TdFunction {
  const SearchAffiliatePrograms({
    required this.affiliate,
    required this.sortOrder,
    required this.offset,
    required this.limit,
  });

  /// [affiliate] The affiliate for which affiliate programs are searched for
  final AffiliateType affiliate;

  /// [sortOrder] Sort order for the results
  final AffiliateProgramSortOrder sortOrder;

  /// [offset] Offset of the first affiliate program to return as received from
  /// the previous request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of affiliate programs to return
  final int limit;

  static const String constructor = 'searchAffiliatePrograms';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'affiliate': affiliate.toJson(),
    'sort_order': sortOrder.toJson(),
    'offset': offset,
    'limit': limit,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
