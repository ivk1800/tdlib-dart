import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat contains pornographic messages
@immutable
class ChatReportReasonPornography extends ChatReportReason {
  const ChatReportReasonPornography();

  static const String constructor = 'chatReportReasonPornography';

  static ChatReportReasonPornography? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ChatReportReasonPornography();
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
