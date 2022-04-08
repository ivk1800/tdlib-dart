import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the reason why a chat is reported
@immutable
abstract class ChatReportReason extends TdObject {
  const ChatReportReason();

  static const String constructor = 'chatReportReason';

  /// Inherited by:
  /// [ChatReportReasonSpam]
  /// [ChatReportReasonViolence]
  /// [ChatReportReasonPornography]
  /// [ChatReportReasonChildAbuse]
  /// [ChatReportReasonCopyright]
  /// [ChatReportReasonUnrelatedLocation]
  /// [ChatReportReasonFake]
  /// [ChatReportReasonCustom]
  static ChatReportReason? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatReportReasonSpam.constructor:
        return ChatReportReasonSpam.fromJson(json);
      case ChatReportReasonViolence.constructor:
        return ChatReportReasonViolence.fromJson(json);
      case ChatReportReasonPornography.constructor:
        return ChatReportReasonPornography.fromJson(json);
      case ChatReportReasonChildAbuse.constructor:
        return ChatReportReasonChildAbuse.fromJson(json);
      case ChatReportReasonCopyright.constructor:
        return ChatReportReasonCopyright.fromJson(json);
      case ChatReportReasonUnrelatedLocation.constructor:
        return ChatReportReasonUnrelatedLocation.fromJson(json);
      case ChatReportReasonFake.constructor:
        return ChatReportReasonFake.fromJson(json);
      case ChatReportReasonCustom.constructor:
        return ChatReportReasonCustom.fromJson(json);
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
