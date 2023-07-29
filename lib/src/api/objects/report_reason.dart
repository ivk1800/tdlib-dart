import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the reason why a chat is reported
@immutable
abstract class ReportReason extends TdObject {
  const ReportReason();

  static const String constructor = 'reportReason';

  /// Inherited by:
  /// [ReportReasonChildAbuse]
  /// [ReportReasonCopyright]
  /// [ReportReasonCustom]
  /// [ReportReasonFake]
  /// [ReportReasonIllegalDrugs]
  /// [ReportReasonPersonalDetails]
  /// [ReportReasonPornography]
  /// [ReportReasonSpam]
  /// [ReportReasonUnrelatedLocation]
  /// [ReportReasonViolence]
  static ReportReason? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReportReasonChildAbuse.constructor:
        return ReportReasonChildAbuse.fromJson(json);
      case ReportReasonCopyright.constructor:
        return ReportReasonCopyright.fromJson(json);
      case ReportReasonCustom.constructor:
        return ReportReasonCustom.fromJson(json);
      case ReportReasonFake.constructor:
        return ReportReasonFake.fromJson(json);
      case ReportReasonIllegalDrugs.constructor:
        return ReportReasonIllegalDrugs.fromJson(json);
      case ReportReasonPersonalDetails.constructor:
        return ReportReasonPersonalDetails.fromJson(json);
      case ReportReasonPornography.constructor:
        return ReportReasonPornography.fromJson(json);
      case ReportReasonSpam.constructor:
        return ReportReasonSpam.fromJson(json);
      case ReportReasonUnrelatedLocation.constructor:
        return ReportReasonUnrelatedLocation.fromJson(json);
      case ReportReasonViolence.constructor:
        return ReportReasonViolence.fromJson(json);
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
