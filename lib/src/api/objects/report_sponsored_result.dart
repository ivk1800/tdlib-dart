import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes result of sponsored message or chat report
@immutable
abstract class ReportSponsoredResult extends TdObject {
  const ReportSponsoredResult();

  static const String constructor = 'reportSponsoredResult';

  /// Inherited by:
  /// [ReportSponsoredResultAdsHidden]
  /// [ReportSponsoredResultFailed]
  /// [ReportSponsoredResultOk]
  /// [ReportSponsoredResultOptionRequired]
  /// [ReportSponsoredResultPremiumRequired]
  static ReportSponsoredResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReportSponsoredResultAdsHidden.constructor:
        return ReportSponsoredResultAdsHidden.fromJson(json);
      case ReportSponsoredResultFailed.constructor:
        return ReportSponsoredResultFailed.fromJson(json);
      case ReportSponsoredResultOk.constructor:
        return ReportSponsoredResultOk.fromJson(json);
      case ReportSponsoredResultOptionRequired.constructor:
        return ReportSponsoredResultOptionRequired.fromJson(json);
      case ReportSponsoredResultPremiumRequired.constructor:
        return ReportSponsoredResultPremiumRequired.fromJson(json);
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
