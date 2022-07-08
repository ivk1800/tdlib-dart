import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat contains messages with personal details
@immutable
class ChatReportReasonPersonalDetails extends ChatReportReason {
  const ChatReportReasonPersonalDetails();

  static const String constructor = 'chatReportReasonPersonalDetails';

  static ChatReportReasonPersonalDetails? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatReportReasonPersonalDetails();
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
