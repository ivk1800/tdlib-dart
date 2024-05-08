import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes result of sponsored message report
@immutable
abstract class ReportChatSponsoredMessageResult extends TdObject {
  const ReportChatSponsoredMessageResult();

  static const String constructor = 'reportChatSponsoredMessageResult';

  /// Inherited by:
  /// [ReportChatSponsoredMessageResultAdsHidden]
  /// [ReportChatSponsoredMessageResultFailed]
  /// [ReportChatSponsoredMessageResultOk]
  /// [ReportChatSponsoredMessageResultOptionRequired]
  /// [ReportChatSponsoredMessageResultPremiumRequired]
  static ReportChatSponsoredMessageResult? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReportChatSponsoredMessageResultAdsHidden.constructor:
        return ReportChatSponsoredMessageResultAdsHidden.fromJson(json);
      case ReportChatSponsoredMessageResultFailed.constructor:
        return ReportChatSponsoredMessageResultFailed.fromJson(json);
      case ReportChatSponsoredMessageResultOk.constructor:
        return ReportChatSponsoredMessageResultOk.fromJson(json);
      case ReportChatSponsoredMessageResultOptionRequired.constructor:
        return ReportChatSponsoredMessageResultOptionRequired.fromJson(json);
      case ReportChatSponsoredMessageResultPremiumRequired.constructor:
        return ReportChatSponsoredMessageResultPremiumRequired.fromJson(json);
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
