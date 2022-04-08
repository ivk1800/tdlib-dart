import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat represents a fake account
@immutable
class ChatReportReasonFake extends ChatReportReason {
  const ChatReportReasonFake();

  static const String constructor = 'chatReportReasonFake';

  static ChatReportReasonFake? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatReportReasonFake();
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
