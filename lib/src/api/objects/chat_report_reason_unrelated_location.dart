import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The location-based chat is unrelated to its stated location
@immutable
class ChatReportReasonUnrelatedLocation extends ChatReportReason {
  const ChatReportReasonUnrelatedLocation();

  static const String constructor = 'chatReportReasonUnrelatedLocation';

  static ChatReportReasonUnrelatedLocation? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatReportReasonUnrelatedLocation();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
