import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The affiliate programs must be sorted by creation date
@immutable
class AffiliateProgramSortOrderCreationDate extends AffiliateProgramSortOrder {
  const AffiliateProgramSortOrderCreationDate();

  static const String constructor = 'affiliateProgramSortOrderCreationDate';

  static AffiliateProgramSortOrderCreationDate? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const AffiliateProgramSortOrderCreationDate();
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
