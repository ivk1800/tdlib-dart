import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a statistical graph
@immutable
abstract class StatisticalGraph extends TdObject {
  const StatisticalGraph();

  static const String constructor = 'statisticalGraph';

  /// Inherited by:
  /// [StatisticalGraphData]
  /// [StatisticalGraphAsync]
  /// [StatisticalGraphError]
  static StatisticalGraph? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StatisticalGraphData.constructor:
        return StatisticalGraphData.fromJson(json);
      case StatisticalGraphAsync.constructor:
        return StatisticalGraphAsync.fromJson(json);
      case StatisticalGraphError.constructor:
        return StatisticalGraphError.fromJson(json);
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
