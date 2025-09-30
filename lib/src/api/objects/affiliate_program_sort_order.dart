import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the order of the found affiliate programs
@immutable
abstract class AffiliateProgramSortOrder extends TdObject {
  const AffiliateProgramSortOrder();

  static const String constructor = 'affiliateProgramSortOrder';

  /// Inherited by:
  /// [AffiliateProgramSortOrderCreationDate]
  /// [AffiliateProgramSortOrderProfitability]
  /// [AffiliateProgramSortOrderRevenue]
  static AffiliateProgramSortOrder? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case AffiliateProgramSortOrderCreationDate.constructor:
        return AffiliateProgramSortOrderCreationDate.fromJson(json);
      case AffiliateProgramSortOrderProfitability.constructor:
        return AffiliateProgramSortOrderProfitability.fromJson(json);
      case AffiliateProgramSortOrderRevenue.constructor:
        return AffiliateProgramSortOrderRevenue.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
