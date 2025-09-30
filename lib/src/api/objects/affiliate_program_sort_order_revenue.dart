import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The affiliate programs must be sorted by the expected revenue
@immutable
class AffiliateProgramSortOrderRevenue extends AffiliateProgramSortOrder {
  const AffiliateProgramSortOrderRevenue();

  static const String constructor = 'affiliateProgramSortOrderRevenue';

  static AffiliateProgramSortOrderRevenue? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const AffiliateProgramSortOrderRevenue();
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
