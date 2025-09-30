import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The affiliate programs must be sorted by the profitability
@immutable
class AffiliateProgramSortOrderProfitability extends AffiliateProgramSortOrder {
  const AffiliateProgramSortOrderProfitability();

  static const String constructor = 'affiliateProgramSortOrderProfitability';

  static AffiliateProgramSortOrderProfitability? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const AffiliateProgramSortOrderProfitability();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
